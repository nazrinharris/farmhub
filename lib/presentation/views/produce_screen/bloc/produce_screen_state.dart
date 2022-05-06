part of 'produce_screen_bloc.dart';

@freezed
class ProduceScreenState with _$ProduceScreenState {
  const factory ProduceScreenState.initial({
    required ProduceScreenProps props,
  }) = PSSInitial;

  const factory ProduceScreenState.getAggregateLoading({
    required ProduceScreenProps props,
  }) = PSSGetAggregateLoading;
  const factory ProduceScreenState.getAggregateCompleted({
    required ProduceScreenProps props,
  }) = PSSGetAggregateCompleted;
  const factory ProduceScreenState.getAggregateError({
    required ProduceScreenProps props,
    required Failure failure,
  }) = PSSGetAggregateError;

  const factory ProduceScreenState.getFirstTenPricesLoading({
    required ProduceScreenProps props,
  }) = PSSGetFirstTenPricesLoading;
  const factory ProduceScreenState.getFirstTenPricesCompleted({
    required ProduceScreenProps props,
  }) = PSSGetFirstTenPricesCompleted;
  const factory ProduceScreenState.getNextTenPricesLoading({
    required ProduceScreenProps props,
  }) = PSSGetNextTenPricesLoading;
  const factory ProduceScreenState.getNextTenPricesCompleted({
    required ProduceScreenProps props,
  }) = PSSGetNextTenPricesCompleted;
  const factory ProduceScreenState.getPricesError({
    required ProduceScreenProps props,
  }) = PSSGetPricesError;
}

@freezed
class ProduceScreenProps with _$ProduceScreenProps {
  const factory ProduceScreenProps({
    required TabController tabController,
    required int index,
    required List<Price> pricesList,
    List<PriceSnippet>? twoWeeksPricesList,
    List<PriceSnippet>? oneMonthPricesList,
    List<PriceSnippet>? twoMonthPricesList,
    List<PriceSnippet>? sixMonthPricesList,
    List<PriceSnippet>? oneYearPricesList,
  }) = _ProduceScreenProps;
}
