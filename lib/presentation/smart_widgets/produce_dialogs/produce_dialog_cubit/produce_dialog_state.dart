part of 'produce_dialog_cubit.dart';

@freezed
class ProduceDialogState with _$ProduceDialogState {
  const factory ProduceDialogState.initial() = _Initial;

  //! As of now, all these states are not utilised whatsoever
  const factory ProduceDialogState.deleteConfirmation() = DeleteConfirmation;
  const factory ProduceDialogState.deleteInProgress() = DeleteInProgress;
  const factory ProduceDialogState.deleteComplete() = DeleteComplete;
  const factory ProduceDialogState.deleteError(Failure failure) = DeleteError;
}
