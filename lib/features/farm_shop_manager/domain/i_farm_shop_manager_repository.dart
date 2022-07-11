import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/address/address.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';

abstract class IFarmShopManagerRepository {
  FutureEither<Farm> createFarm({
    required String farmName,
    required Address farmAddress,
  });
  FutureEither<Shop> createShop({
    required String shopName,
    required Address shopAddress,
  });
}
