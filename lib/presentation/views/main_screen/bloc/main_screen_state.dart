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
  const factory MainScreenState.firstTenPricesCompleted({
    required MainScreenProps props,
  }) = MSSFirstTenPricesSuccess;
  const factory MainScreenState.nextTenPricesCompleted({
    required MainScreenProps props,
  }) = MSSNextTenPricesSuccess;
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
