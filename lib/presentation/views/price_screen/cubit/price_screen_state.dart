part of 'price_screen_cubit.dart';

@freezed
class PriceScreenState with _$PriceScreenState {
  const factory PriceScreenState.initial({required PriceScreenProps props}) = PriceInitial;

  const factory PriceScreenState.loading({required PriceScreenProps props}) = PriceLoading;
  const factory PriceScreenState.completed({required PriceScreenProps props}) = PriceCompleted;
  const factory PriceScreenState.error(
      {required PriceScreenProps props, required Failure failure}) = PriceError;
}

@freezed
class PriceScreenProps with _$PriceScreenProps {
  const factory PriceScreenProps({
    required Price price,
  }) = _PriceScreenProps;
}
