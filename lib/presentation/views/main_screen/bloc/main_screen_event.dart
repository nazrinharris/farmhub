part of 'main_screen_bloc.dart';

@freezed
class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.started() = _Started;

  //! Debug
  const factory MainScreenEvent.toggleMainHeader() = _MSEToggleMainHeader;
}
