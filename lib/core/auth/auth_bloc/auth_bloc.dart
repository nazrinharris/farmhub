import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(_Initial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
