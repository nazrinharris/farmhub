import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/presentation/views/debug/playground_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

part 'auth_cubit_state.dart';
part 'auth_cubit.freezed.dart';

enum FromAccount { phone, google, apple }

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
      phoneNumber: "+${phoneNumber.countryCode} ${phoneNumber.nsn}",
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
            await _createAccountFromUserCred(userCred, FromAccount.phone).then(
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
      emit(
        AuthState.credentialLoginError(
          FirebaseAuthFailure(
            message: e.message,
            stackTrace: e.stackTrace,
            code: e.code,
          ),
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

  Future<void> signInWithGoogle() async {
    // Make sure any residue of the previous user has been removed.
    await authRepository.signOut();

    final googleSignInResult = await authRepository.signInWithGoogle();

    googleSignInResult.fold(
      (f) => emit(AuthState.credentialLoginError(f)),
      (tupleUser) {
        globalAuthCubit.updateFarmhubUser(tupleUser.first);
        emit(AuthState.thirdPartyAccountCreationSuccess(tupleUser));
      },
    );
  }

  Future<void> signInWithApple() async {
    // Make sure any residue of the previous user has been removed.
    await authRepository.signOut();

    final appleSignInResultCredentials = await authRepository.signInWithApple();

    appleSignInResultCredentials.fold(
      (f) => emit(AuthState.credentialLoginError(f)),
      (tupleUser) {
        globalAuthCubit.updateFarmhubUser(tupleUser.first);
        emit(AuthState.thirdPartyAccountCreationSuccess(tupleUser));
      },
    );
  }

  /// Creates an account in [CloudFirestore] with the given [UserCredential], its name will be
  /// auto-generated if the type is [FromAccount.phone]
  Future<FarmhubUser> _createAccountFromUserCred(
      UserCredential userCred, FromAccount fromAccount) async {
    Either<Failure, FarmhubUser>? result;

    if (fromAccount == FromAccount.phone) {
      result = await authRepository.createAccountWithPhone(
        uid: userCred.user!.uid,
        phoneNumber: userCred.user!.phoneNumber!,
      );
    }

    if (fromAccount == FromAccount.google) {
      result = await authRepository.registerWithCredentials(
        uid: userCred.user!.uid,
        email: userCred.user!.email!,
        displayName: userCred.user!.displayName!,
      );
    }

    final toReturn = result!.fold(
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
