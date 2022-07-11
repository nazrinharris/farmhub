import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/address/address.dart';
import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/features/farm_shop_manager/domain/i_farm_shop_manager_repository.dart';

class FarmShopManagerRepository implements IFarmShopManagerRepository {
  @override
  FutureEither<Farm> createFarm({required String farmName, required Address farmAddress}) {
    // TODO: implement createFarm
    throw UnimplementedError();
  }

  @override
  FutureEither<Shop> createShop({required String shopName, required Address shopAddress}) {
    // TODO: implement createShop
    throw UnimplementedError();
  }
}
