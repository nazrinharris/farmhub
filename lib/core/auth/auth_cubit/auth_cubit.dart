import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuth firebaseAuth;
  final IAuthRepository authRepository;

  AuthCubit({
    required this.firebaseAuth,
    required this.authRepository,
  }) : super(AuthState.initial());

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
      phoneNumber: "+60 ${phoneNumber.nsn}",
      timeout: const Duration(minutes: 1),
      verificationFailed: (FirebaseAuthException e) async {
        print("Verification Failed!");
        c.complete(
          AuthState.phoneVerificationError(
            FirebaseAuthFailure(code: e.code, message: e.message, stackTrace: e.stackTrace),
          ),
        );
      },
      codeSent: (String verificationId, int? resendToken) async {
        print("Code Sent!");
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
        await _createAccountFromUserCred(userCred).then(
          (user) => emit(AuthState.accountCreationSuccess(user)),
        );
      });
    } catch (e, stack) {
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
      (l) => throw AuthException(
        code: l.code ?? "Unknown Code",
        message: "An error occured while creating a new account",
        stackTrace: StackTrace.current,
      ),
      (user) => user,
    );

    return toReturn;
  }
}
