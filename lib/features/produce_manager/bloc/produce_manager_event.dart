part of 'produce_manager_bloc.dart';

@freezed
class ProduceManagerEvent with _$ProduceManagerEvent {
  const factory ProduceManagerEvent.started() = _Started;

  const factory ProduceManagerEvent.execGetFirstTenProduce() = _PMEExecGetFirstTenProduce;

  const factory ProduceManagerEvent.execCreateProduce({
    required String produceName,
    required num currentProducePrice,
  }) = _PMEExecCreateProduce;

  const factory ProduceManagerEvent.execGetOneWeekPrices({
    required String pid,
  }) = _PMEExecGetOneWeekPrices;
}
