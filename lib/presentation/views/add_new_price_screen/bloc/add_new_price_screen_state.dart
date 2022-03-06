part of 'add_new_price_screen_bloc.dart';

@freezed
class AddNewPriceScreenState with _$AddNewPriceScreenState {
  const factory AddNewPriceScreenState.initial() = ANPSInitial;

  const factory AddNewPriceScreenState.loading() = ANPSLoading;

  const factory AddNewPriceScreenState.getFirstTenProduceSuccess({
    required List<Produce> produceList,
  }) = ANPSGetFirstTenProduceSuccess;
  const factory AddNewPriceScreenState.getFirstTenProduceError({
    required String message,
    required String code,
    required StackTrace stackTrace,
  }) = ANPSGetFirstTenProduceError;
}
