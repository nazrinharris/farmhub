import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';

import '../../domain/entities/address/address.dart';

abstract class IFarmShopManagerRemoteDatasource {
  Future<Farm> createFarm({
    required String farmName,
    required Address farmAddress,
  });

  Future<Farm> createShop({
    required String shopName,
    required Address shopAddress,
  });
}

class FarmShopManagerRemoteDatasource implements IFarmShopManagerRemoteDatasource {
  @override
  Future<Farm> createFarm({required String farmName, required Address farmAddress}) {
    // TODO: implement createFarm
    throw UnimplementedError();
  }

  @override
  Future<Farm> createShop({required String shopName, required Address shopAddress}) {
    // TODO: implement createShop
    throw UnimplementedError();
  }
}
