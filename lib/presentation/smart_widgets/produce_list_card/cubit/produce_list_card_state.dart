part of 'produce_list_card_cubit.dart';

@freezed
class ProduceListCardState with _$ProduceListCardState {
  const factory ProduceListCardState.initial() = _Initial;

  //! As of now, all these states are not utilised whatsoever
  const factory ProduceListCardState.deleteConfirmation() = DeleteConfirmation;
  const factory ProduceListCardState.deleteInProgress() = DeleteInProgress;
  const factory ProduceListCardState.deleteComplete() = DeleteComplete;
  const factory ProduceListCardState.deleteError(Failure failure) = DeleteError;
}
