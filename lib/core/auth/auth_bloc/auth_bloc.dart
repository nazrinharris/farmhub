import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  final GlobalAuthCubit globalAuthCubit;

  AuthBloc({required this.authRepository, required this.globalAuthCubit})
      : super(const ASInitial()) {
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

        print(
            "GlobalAuthCubit: User -> ${globalAuthCubit.state.farmhubUser}, isAdmin -> ${globalAuthCubit.state.isAdmin}");
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

        print(
            "GlobalAuthCubit: User -> ${globalAuthCubit.state.farmhubUser}, isAdmin -> ${globalAuthCubit.state.isAdmin}");

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

        print(
            "GlobalAuthCubit: User -> ${globalAuthCubit.state.farmhubUser}, isAdmin -> ${globalAuthCubit.state.isAdmin}");

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
