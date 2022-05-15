part of 'main_screen_bloc.dart';

@freezed
class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.started() = _MSEStarted;

  const factory MainScreenEvent.getFirstTenProduce() = _MSEGetFirstTenProduce;
  const factory MainScreenEvent.getNextTenProduce() = _MSEGetNextTenProduce;

  const factory MainScreenEvent.refresh() = _MSERefresh;

  //! Debug
  const factory MainScreenEvent.toggleMainHeader() = _MSEToggleMainHeader;
}
