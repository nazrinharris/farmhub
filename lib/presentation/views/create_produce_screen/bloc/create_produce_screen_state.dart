part of 'create_produce_screen_bloc.dart';

@freezed
class CreateProduceScreenState with _$CreateProduceScreenState {
  const factory CreateProduceScreenState.initial() = _Initial;

  const factory CreateProduceScreenState.createNewProduceLoading() = _CPSSCreateNewProduceLoading;
  const factory CreateProduceScreenState.createNewProduceSuccess({
    required Produce produce,
  }) = _CPSSCreateNewProduceSuccess;
  const factory CreateProduceScreenState.createNewProduceError({
    required String code,
    required String message,
  }) = _CPSSCreateNewProduceError;
}
