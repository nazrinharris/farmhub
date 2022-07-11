import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/address/address.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'package:fpdart/fpdart.dart';

abstract class IFarmShopManagerRepository {
  FutureEither<Farm> createFarm({
    required String farmName,
    required Address farmAddress,
  });
  FutureEither<Unit> deleteFarm({
    required String farmId,
  });
  FutureEither<Unit> updateFarm({required Farm farm});

  FutureEither<Shop> createShop({
    required String shopName,
    required Address shopAddress,
  });
  FutureEither<Unit> deleteShop({
    required String shopId,
  });
  FutureEither<Unit> updateShop({required Shop shop});
}
