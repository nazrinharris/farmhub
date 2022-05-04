part of 'produce_screen_bloc.dart';

@freezed
class ProduceScreenState with _$ProduceScreenState {
  const factory ProduceScreenState.initial({
    required ProduceScreenProps props,
  }) = _PSSInitial;

  const factory ProduceScreenState.loading({
    required ProduceScreenProps props,
  }) = _PSSLoading;

  const factory ProduceScreenState.completed({
    required ProduceScreenProps props,
  }) = _PSSCompleted;
}

@freezed
class ProduceScreenProps with _$ProduceScreenProps {
  const factory ProduceScreenProps({
    required TabController tabController,
    required int index,
    List<PriceSnippet>? twoWeeksPricesList,
    List<PriceSnippet>? oneMonthPricesList,
    List<PriceSnippet>? twoMonthPricesList,
    List<PriceSnippet>? sixMonthPricesList,
    List<PriceSnippet>? oneYearPricesList,
  }) = _ProduceScreenProps;
}
