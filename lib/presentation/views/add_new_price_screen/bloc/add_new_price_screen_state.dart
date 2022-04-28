part of 'add_new_price_screen_bloc.dart';

@freezed
class AddNewPriceScreenState with _$AddNewPriceScreenState {
  const factory AddNewPriceScreenState.initial({
    required AddNewPriceScreenProps props,
  }) = ANPSInitial;

  const factory AddNewPriceScreenState.pricesLoading({
    required AddNewPriceScreenProps props,
  }) = ANPSPricesLoading;
  const factory AddNewPriceScreenState.nextPricesLoading({
    required AddNewPriceScreenProps props,
  }) = ANPSNextPricesLoading;

  const factory AddNewPriceScreenState.pricesCompleted({
    required AddNewPriceScreenProps props,
  }) = ANPSPricesCompleted;
  const factory AddNewPriceScreenState.pricesError({
    required String message,
    required String code,
    required StackTrace stackTrace,
    required AddNewPriceScreenProps props,
  }) = ANPSPricesError;

  const factory AddNewPriceScreenState.addNewPriceSuccess({
    required Produce produce,
    required AddNewPriceScreenProps props,
  }) = ANPSAddNewPriceSuccess;

  const factory AddNewPriceScreenState.addNewPriceError({
    required AddNewPriceScreenProps props,
    required Failure failure,
  }) = ANPSAddNewPriceError;
}

@freezed
class AddNewPriceScreenProps with _$AddNewPriceScreenProps {
  const factory AddNewPriceScreenProps({
    required List<Produce> produceList,
  }) = _AddNewPriceScreenProps;
}
