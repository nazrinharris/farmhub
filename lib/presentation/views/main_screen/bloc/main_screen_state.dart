part of 'main_screen_bloc.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState.initial({
    required MainScreenProps props,
  }) = MSSInitial;

  // Main Screen
  const factory MainScreenState.pricesLoading({
    required MainScreenProps props,
  }) = MSSPricesLoading;
  const factory MainScreenState.nextPricesLoading({
    required MainScreenProps props,
  }) = MSSNextPricesLoading;
  const factory MainScreenState.pricesCompleted({
    required MainScreenProps props,
  }) = MSSPricesCompleted;
  const factory MainScreenState.pricesError({
    required MainScreenProps props,
    required String code,
    required String message,
  }) = MSSPricesError;
}

@freezed
class MainScreenProps with _$MainScreenProps {
  const factory MainScreenProps({
    required bool isMainHeaderVisible,
    required List<Produce> produceList,
  }) = _MainScreenProps;
}
