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
  const factory ProduceManagerState.createNewProduceError({required Failure failure}) =
      PMSCreateNewProduceError;
}
