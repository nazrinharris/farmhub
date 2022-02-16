part of 'register_screen_bloc.dart';

@freezed
class RegisterScreenEvent with _$RegisterScreenEvent {
  const factory RegisterScreenEvent.started() = _RSEStarted;
  const factory RegisterScreenEvent.idle() = _RSEIdle;
  const factory RegisterScreenEvent.continuePressed() = _RSEContinuePressed;
  const factory RegisterScreenEvent.toggleInfoTileVisibility() =
      _RSEToggleVisible;
}
