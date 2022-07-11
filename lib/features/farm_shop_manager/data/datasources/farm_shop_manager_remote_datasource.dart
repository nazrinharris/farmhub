import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';

import '../../domain/entities/address/address.dart';

abstract class IFarmShopManagerRemoteDatasource {
  Future<Farm> createFarm({
    required FarmhubUser farmhubUser,
    required String farmName,
    required Address farmAddress,
  });

  Future<Farm> createShop({
    required FarmhubUser farmhubUser,
    required String shopName,
    required Address shopAddress,
  });
}

class FarmShopManagerRemoteDatasource implements IFarmShopManagerRemoteDatasource {
  final FirebaseFirestore firebaseFirestore;

  FarmShopManagerRemoteDatasource({required this.firebaseFirestore});

  @override
  Future<Farm> createFarm({
    required String farmName,
    required Address farmAddress,
    required FarmhubUser farmhubUser,
  }) async {
    final Farm farm = Farm(fid: "UNKNOWN_ID", farmName: farmName, address: farmAddress);

    if (farmhubUser.userType != UserType.farmer || farmhubUser.userType != UserType.business) {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Farm.",
        stackTrace: StackTrace.current,
      );
    }

    //! Start with updating the [farm] sub-collection of the given user
    final resultingId =
        await firebaseFirestore.collection(FS_USER).doc(farmhubUser.uid).collection(FS_FARM);

    throw UnimplementedError();
  }

  @override
  Future<Farm> createShop({
    required FarmhubUser farmhubUser,
    required String shopName,
    required Address shopAddress,
  }) {
    // TODO: implement createShop
    throw UnimplementedError();
  }
}
