part of 'register_screen_bloc.dart';

@freezed
class RegisterScreenState with _$RegisterScreenState {
  const factory RegisterScreenState.initial(RegisterScreenProps props) =
      _RSSInitial;
  const factory RegisterScreenState.loading(RegisterScreenProps props) =
      _RSSLoading;
  const factory RegisterScreenState.idle(RegisterScreenProps props) = _RSSIdle;
}

@freezed
class RegisterScreenProps with _$RegisterScreenProps {
  const factory RegisterScreenProps({
    required bool isInfoTileVisible,
  }) = _RegisterScreenProps;
}
