import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

part 'auth_cubit_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuth firebaseAuth;
  final IAuthRepository authRepository;
  final IAuthRemoteDataSource authRemoteDataSource;
  final GlobalAuthCubit globalAuthCubit;

  AuthCubit({
    required this.firebaseAuth,
    required this.authRepository,
    required this.authRemoteDataSource,
    required this.globalAuthCubit,
  }) : super(const AuthState.initial());

  /// [verifyPhoneAndSendSMS] will essentially verify the phone, as in to check whether it is a valid
  /// number or not.
  ///
  /// If it confirms that the phone number is a valid number, it will emit [SMSCodeSentToClient], and
  /// [PhoneVerificationError] if anything goes wrong.
  Future<void> verifyPhoneAndSendSMS({
    required PhoneNumber phoneNumber,
  }) async {
    Completer<AuthState> c = Completer();

    await firebaseAuth.verifyPhoneNumber(
      // TODO: Change to MY
      phoneNumber: "+1 ${phoneNumber.nsn}",
      timeout: const Duration(minutes: 1),
      verificationFailed: (FirebaseAuthException e) async {
        debugPrint("Verification Failed!");
        debugPrint(e.toString());
        c.complete(
          AuthState.phoneVerificationError(
            FirebaseAuthFailure(code: e.code, message: e.message, stackTrace: e.stackTrace),
          ),
        );
      },
      codeSent: (String verificationId, int? resendToken) async {
        debugPrint("Code Sent!");
        c.complete(
          AuthState.SMSCodeSentToClient(
            verificationId: verificationId,
            phoneNumber: phoneNumber,
            resendToken: resendToken,
          ),
        );
      },
      verificationCompleted: (credential) async {},
      codeAutoRetrievalTimeout: (String verificationId) async {},
    );

    var state = c.future;

    emit(await state);
  }

  /// [sendCodeFromClientAndSignIn] will send the code entered by the client, if it succeeds, it will
  /// then attempt to create a new account in [CloudFirestore]
  Future<void> sendCodeFromClientAndSignIn({
    required String verificationId,
    required String code,
  }) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: code,
    );

    try {
      await firebaseAuth.signInWithCredential(credential).then((userCred) async {
        final uidCheckResult = await authRepository.retrieveUserData(uid: userCred.user!.uid);

        uidCheckResult.fold(
          (f) async {
            // Could not find uid in database - create new account
            await _createAccountFromUserCred(userCred).then(
              (user) {
                globalAuthCubit.updateFarmhubUser(user);
                emit(AuthState.accountCreationSuccess(user));
              },
            );
          },
          (user) {
            // Found user, send it to screen
            globalAuthCubit.updateFarmhubUser(user);
            emit(AuthState.accountCreationSuccess(user));
          },
        );
      });
    } on FirebaseAuthException catch (e) {
      debugPrint(e.code);
      AuthState.credentialLoginError(
        AuthFailure(
          message: e.message,
          stackTrace: e.stackTrace,
          code: e.toString(),
        ),
      );
    } catch (e, stack) {
      debugPrint(e.runtimeType.toString());
      emit(
        AuthState.credentialLoginError(
          AuthFailure(
            message: "An error occured while logging in with phone number",
            stackTrace: stack,
            code: e.toString(),
          ),
        ),
      );
    }
  }

  /// Creates an account in [CloudFirestore] with the given [UserCredential], its name will be
  /// auto-generated.
  Future<FarmhubUser> _createAccountFromUserCred(UserCredential userCred) async {
    final result = await authRepository.createAccountWithPhone(
      uid: userCred.user!.uid,
      phoneNumber: userCred.user!.phoneNumber!,
    );

    final toReturn = result.fold(
      (l) {
        debugPrint(l.toString());
        throw AuthException(
          code: l.code ?? "Unknown Code",
          message: "An error occured while creating a new account",
          stackTrace: l.stackTrace,
        );
      },
      (user) => user,
    );

    return toReturn;
  }
}
