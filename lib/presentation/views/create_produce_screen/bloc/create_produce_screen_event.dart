part of 'create_produce_screen_bloc.dart';

@freezed
class CreateProduceScreenEvent with _$CreateProduceScreenEvent {
  const factory CreateProduceScreenEvent.started() = _Started;

  const factory CreateProduceScreenEvent.execCreateNewProduce(BuildContext context) =
      _CPSEExecCreateNewProduce;
}
