// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'dart:io';

import '../../errors/failures.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

//TODO: Deprecate [AuthBloc] in favor of [AuthCubit] and as such, update methods here to over there.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  final GlobalAuthCubit globalAuthCubit;
  final FirebaseAuth firebaseAuth;

  AuthBloc({
    required this.authRepository,
    required this.globalAuthCubit,
    required this.firebaseAuth,
  }) : super(const ASInitial()) {
    on<_AEExecLoginWithEmailAndPassword>(execLoginWithEmailAndPassword);
    on<_AEExecRegisterWithEmailAndPassword>(execRegisterWithEmailAndPassword);
    on<_AEExecRetrieveUserData>(execRetrieveUserData);
    on<_AEExecSignOut>(execSignOut);
    on<_AEExecIsAdmin>(execIsAdmin);
  }

  FutureOr<void> execLoginWithEmailAndPassword(
    _AEExecLoginWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loginLoading());

    final failureOrLogin = await authRepository.loginWithEmailAndPassword(
      email: event.email,
      password: event.password,
    );

    await failureOrLogin.fold(
      (f) async {
        emit(AuthState.loginError(
          message: f.message!,
          code: f.code!,
          stackTrace: f.stackTrace!,
        ));
      },
      (user) async {
        final isAdminOrFailure = await authRepository.isAdmin(uid: user.uid);

        await isAdminOrFailure.fold(
          (f) async {
            emit(AuthState.loginError(
              code: f.code ?? "Unknown Code",
              message: f.message ?? "Unknown message",
              stackTrace: f.stackTrace ?? StackTrace.current,
            ));
          },
          (isAdmin) async {
            globalAuthCubit.updateFarmhubUser(user);
            globalAuthCubit.updateIsAdmin(isAdmin);

            emit(AuthState.loginSuccess(user: user));
          },
        );
      },
    );
  }

  FutureOr<void> execRegisterWithEmailAndPassword(
    _AEExecRegisterWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.registerLoading());

    final failureOrRegister = await authRepository.registerWithEmailAndPassword(
      email: event.email,
      password: event.password,
      username: event.username,
      userType: event.userType,
    );

    failureOrRegister.fold(
      (f) {
        emit(AuthState.registerError(
          message: f.message!,
          code: f.code!,
          stackTrace: f.stackTrace!,
        ));
      },
      (user) async {
        globalAuthCubit.updateFarmhubUser(user);
        globalAuthCubit.updateIsAdmin(false);

        emit(AuthState.registerSuccess(user: user));
      },
    );
  }

  FutureOr<void> execSignOut(
    _AEExecSignOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.signOutLoading());

    final failureOrSignOut = await authRepository.signOut();

    failureOrSignOut.fold(
      (f) {
        emit(AuthState.signOutError(
          code: f.code!,
          message: f.message!,
          stackTrace: f.stackTrace!,
        ));
      },
      (r) {
        globalAuthCubit.updateFarmhubUser(null);
        globalAuthCubit.updateIsAdmin(null);

        emit(const AuthState.signOutSuccess());
      },
    );
  }

  FutureOr<void> execRetrieveUserData(
    _AEExecRetrieveUserData event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.retrieveUserDataLoading());

    final failureOrSignOut = await authRepository.retrieveUserData();

    emit(failureOrSignOut.fold(
      (f) => AuthState.retrieveUserDataError(
        code: f.code!,
        message: f.message!,
        stackTrace: f.stackTrace!,
      ),
      (farmhubUser) => AuthState.retrieveUserDataSuccess(farmhubUser: farmhubUser),
    ));
  }

  FutureOr<void> execIsAdmin(
    _AEExecIsAdmin event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.isAdminLoading());

    final failureOrBool = await authRepository.isAdmin(uid: event.uid);

    emit(failureOrBool.fold(
      (f) => AuthState.isAdminError(
        code: f.code!,
        message: f.message!,
        stackTrace: f.stackTrace!,
      ),
      (isAdmin) => AuthState.isAdminSuccess(isAdmin: isAdmin),
    ));
  }
}
