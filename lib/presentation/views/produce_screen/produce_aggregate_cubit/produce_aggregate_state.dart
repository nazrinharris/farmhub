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
}

@freezed
class ProduceAggregateProps with _$ProduceAggregateProps {
  const factory ProduceAggregateProps({
    required TabController tabController,
    required int index,
    required Produce? produce,
    List<PriceSnippet>? twoWeeksPricesList,
    List<PriceSnippet>? oneMonthPricesList,
    List<PriceSnippet>? twoMonthPricesList,
    List<PriceSnippet>? sixMonthPricesList,
    List<PriceSnippet>? oneYearPricesList,
  }) = _ProduceAggregateProps;
}
