part of 'produce_manager_bloc.dart';

@freezed
class ProduceManagerEvent with _$ProduceManagerEvent {
  const factory ProduceManagerEvent.started() = _Started;

  const factory ProduceManagerEvent.execGetFirstTenProduce() = _PMEExecGetFirstTenProduce;
}
