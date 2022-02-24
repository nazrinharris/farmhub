part of 'main_screen_bloc.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState.initial({
    required MainScreenProps props,
  }) = MSSInitial;

  // Main Screen
  const factory MainScreenState.mainPricesLoading({
    required MainScreenProps props,
  }) = MSSPricesLoading;
  const factory MainScreenState.mainPricesCompleted({
    required MainScreenProps props,
    required List<Produce> produceList,
  }) = MSSPricesCompleted;
  const factory MainScreenState.mainPricesError({
    required MainScreenProps props,
    required String code,
    required String message,
  }) = MSSPricesError;

  // Search Screen
  const factory MainScreenState.searchInitial({
    required MainScreenProps props,
  }) = MSSSearchInitial;
  const factory MainScreenState.searchLoading({
    required MainScreenProps props,
  }) = MSSSearchLoading;
  const factory MainScreenState.searchCompleted({
    required MainScreenProps props,
  }) = MSSSearchCompleted;
  const factory MainScreenState.searchError({
    required MainScreenProps props,
  }) = MSSSearchError;
}

@freezed
class MainScreenProps with _$MainScreenProps {
  const factory MainScreenProps({
    required bool isMainHeaderVisible,
  }) = _MainScreenProps;
}
