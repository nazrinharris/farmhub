part of 'produce_aggregate_cubit.dart';

@freezed
class ProduceAggregateState with _$ProduceAggregateState {
  const factory ProduceAggregateState.initial({
    required ProduceAggregateProps props,
  }) = PASInitial;

  const factory ProduceAggregateState.loading({
    required ProduceAggregateProps props,
  }) = PASLoading;
  const factory ProduceAggregateState.completed({
    required ProduceAggregateProps props,
  }) = PASCompleted;
  const factory ProduceAggregateState.error({
    required ProduceAggregateProps props,
    required Failure failure,
  }) = PASError;
  const factory ProduceAggregateState.addToFavoritesLoading({
    required ProduceAggregateProps props,
  }) = PASAddToFavoritesLoading;
  const factory ProduceAggregateState.removeFromFavoritesLoading({
    required ProduceAggregateProps props,
  }) = PASRemoveFromFavoritesLoading;
}

@freezed
class ProduceAggregateProps with _$ProduceAggregateProps {
  const factory ProduceAggregateProps({
    required TabController tabController,
    required int index,
    required Produce? produce,
    required FarmhubUser farmhubUser,
    required bool isProduceFavorite,
    List<PriceSnippet>? oneWeekPricesList,
    List<PriceSnippet>? twoWeeksPricesList,
    List<PriceSnippet>? oneMonthPricesList,
    List<PriceSnippet>? twoMonthPricesList,
    List<PriceSnippet>? sixMonthPricesList,
    List<PriceSnippet>? oneYearPricesList,
  }) = _ProduceAggregateProps;
}
