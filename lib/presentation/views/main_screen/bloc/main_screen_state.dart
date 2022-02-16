part of 'main_screen_bloc.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState.initial() = _Initial;

  // Main Screen
  const factory MainScreenState.mainPricesLoading() = MSSPricesLoading;
  const factory MainScreenState.mainPricesCompleted() = MSSPricesCompleted;
  const factory MainScreenState.mainPricesError() = MSSPricesError;

  // Search Screen
  const factory MainScreenState.searchInitial() = MSSSearchInitial;
  const factory MainScreenState.searchLoading() = MSSSearchLoading;
  const factory MainScreenState.searchCompleted() = MSSSearchCompleted;
  const factory MainScreenState.searchError() = MSSSearchError;
}
