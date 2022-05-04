part of 'produce_screen_bloc.dart';

@freezed
class ProduceScreenState with _$ProduceScreenState {
  const factory ProduceScreenState.initial({
    required ProduceScreenProps props,
  }) = PSSInitial;

  const factory ProduceScreenState.loading({
    required ProduceScreenProps props,
  }) = PSSLoading;

  const factory ProduceScreenState.completed({
    required ProduceScreenProps props,
  }) = PSSCompleted;

  const factory ProduceScreenState.error({
    required ProduceScreenProps props,
    required Failure failure,
  }) = PSSError;
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
