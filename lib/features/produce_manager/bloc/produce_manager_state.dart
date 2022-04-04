part of 'produce_manager_bloc.dart';

@freezed
class ProduceManagerState with _$ProduceManagerState {
  const factory ProduceManagerState.initial() = PMSInitial;

  // Getting First Ten Produce State
  const factory ProduceManagerState.getFirstTenProduceLoading() = PMSGetFirstTenProduceLoading;
  const factory ProduceManagerState.getFirstTenProduceSuccess({
    required List<Produce> produceList,
  }) = PMSGetFirstTenProduceSuccess;
  const factory ProduceManagerState.getFirstTenProduceError({
    required String code,
    required String message,
    required StackTrace stackTrace,
  }) = PMSGetFirstTenProduceError;

  // Creating New Produce State
  const factory ProduceManagerState.createNewProduceLoading() = PMSCreateNewProduceLoading;
  const factory ProduceManagerState.createNewProduceSuccess({
    required Produce produce,
  }) = PMSCreateNewProduceSuccess;
  const factory ProduceManagerState.createNewProduceError({
    required String code,
    required String message,
    required StackTrace stackTrace,
  }) = PMSCreateNewProduceError;

  // Retrieving last seven prices of a Produce
  const factory ProduceManagerState.getOneWeekPricesLoading() = PMSOneWeekPricesLoading;
  const factory ProduceManagerState.getOneWeekPricesSuccess({
    required List<Price> priceList,
  }) = PMSOneWeekPricesSuccess;
  const factory ProduceManagerState.getOneWeekPricesError({
    required String code,
    required String message,
    required StackTrace stackTrace,
  }) = PMSOneWeekPricesError;
}
