part of 'shop_screen_cubit.dart';

@freezed
class ShopScreenState with _$ShopScreenState {
  const factory ShopScreenState.initial() = _Initial;

  const factory ShopScreenState.createShopLoading() = CreateShopLoading;
  const factory ShopScreenState.createShopSuccess(Shop shop) = CreateShopSuccess;
  const factory ShopScreenState.createShopError(Failure failure) = CreateShopError;
}
