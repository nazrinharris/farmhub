part of 'login_screen_bloc.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState.initial(LoginScreenProps props) = _LSSInitial;
  const factory LoginScreenState.loading(LoginScreenProps props) = _LSSLoading;
  const factory LoginScreenState.idle(LoginScreenProps props) = _LSSIdle;
}

@freezed
class LoginScreenProps with _$LoginScreenProps {
  const factory LoginScreenProps({
    required bool isInfoTileVisible,
  }) = _LoginScreenProps;
}
