part of 'register_screen_bloc.dart';

@freezed
class RegisterScreenEvent with _$RegisterScreenEvent {
  const factory RegisterScreenEvent.started() = _RSEStarted;
  const factory RegisterScreenEvent.idle() = _RSEIdle;
  const factory RegisterScreenEvent.continuePressed(BuildContext context) = _RSEContinuePressed;
  const factory RegisterScreenEvent.toggleInfoTileVisibility() = _RSEToggleVisible;
  const factory RegisterScreenEvent.chooseUserType({
    required UserType userType,
    required BuildContext context,
    required String uid,
  }) = _RSEChooseUserType;
}
