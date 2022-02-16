import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const ASInitial()) {
    on<_AEExecLoginWithEmailAndPassword>(execLoginWithEmailAndPassword);
    on<_AEExecRegisterWithEmailAndPassword>(execRegisterWithEmailAndPassword);
    on<_AEExecSignOut>(execSignOut);
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

    emit(
      failureOrLogin.fold(
        (failure) => AuthState.loginError(
          message: failure.message!,
          code: failure.code!,
        ),
        (user) => AuthState.loginSuccess(user: user),
      ),
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
    );

    emit(
      failureOrRegister.fold(
        (failure) => AuthState.registerError(
          code: failure.code!,
          message: failure.message!,
        ),
        (user) => AuthState.registerSuccess(user: user),
      ),
    );
  }

  FutureOr<void> execSignOut(
    _AEExecSignOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.signOutLoading());

    final failureOrSignOut = await authRepository.signOut();

    emit(failureOrSignOut.fold(
      (failure) => AuthState.signOutError(
          code: failure.code!, message: failure.message!),
      (_) => const AuthState.signOutSuccess(),
    ));
  }
}
