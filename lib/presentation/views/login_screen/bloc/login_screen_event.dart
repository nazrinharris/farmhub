part of 'login_screen_bloc.dart';

@freezed
class LoginScreenEvent with _$LoginScreenEvent {
  const factory LoginScreenEvent.started() = _LSEStarted;
  const factory LoginScreenEvent.idle() = _LSEIdle;
  const factory LoginScreenEvent.continuePressed(BuildContext context) = _LSEContinuePressed;
  const factory LoginScreenEvent.toggleInfoTileVisibility() = _LSEToggleVisible;
}
