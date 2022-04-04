part of 'add_new_price_screen_bloc.dart';

@freezed
class AddNewPriceScreenEvent with _$AddNewPriceScreenEvent {
  const factory AddNewPriceScreenEvent.started() = _ANPEStarted;

  const factory AddNewPriceScreenEvent.getFirstTenProduce() = _ANPEGetFirstTenProduce;

  const factory AddNewPriceScreenEvent.execAddNewPrice({
    required Produce produce,
  }) = _ANPEExecAddNewPrice;
}
