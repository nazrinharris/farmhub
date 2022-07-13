import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/entities/address/address.dart';

abstract class IFarmShopManagerRemoteDatasource {
  Future<Farm> createFarm({
    required FarmhubUser farmhubUser,
    required String farmName,
    required Address farmAddress,
  });
  Future<Unit> deleteFarm({required FarmhubUser farmhubUser, required String farmId});
  Future<Unit> updateFarm({required FarmhubUser farmhubUser, required Farm farm});
  Future<List<Farm>> getUserFarms({required FarmhubUser farmhubUser});

  Future<Shop> createShop({
    required FarmhubUser farmhubUser,
    required String shopName,
    required Address shopAddress,
  });
  Future<Unit> deleteShop({required FarmhubUser farmhubUser, required String shopId});
  Future<Unit> updateShop({required FarmhubUser farmhubUser, required Shop shop});
  Future<List<Shop>> getUserShops({required FarmhubUser farmhubUser});
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
    final Farm newFarm = Farm(
      creatorUserId: farmhubUser.uid,
      farmId: "UNKNOWN_ID",
      farmName: farmName,
      address: farmAddress,
    );

    if (farmhubUser.userType != UserType.farmer || farmhubUser.userType != UserType.business) {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Farm.",
        stackTrace: StackTrace.current,
      );
    }

    //! Start with updating the [userFarms] sub-collection of the given user
    final newFarmId = await firebaseFirestore
        .collection(FS_USER)
        .doc(farmhubUser.uid)
        .collection(FS_USER_FARM)
        .add(newFarm.toJson())
        .then((doc) async {
      doc.update({"farmId": doc.id});
      return doc.id;
    });

    //! Create the new [Farm] in the [farms] global collection
    await firebaseFirestore.collection(FS_GLOBAL_FARM).doc(newFarmId).set(newFarm.toJson());

    return newFarm.copyWith(farmId: newFarmId);
  }

  @override
  Future<Shop> createShop({
    required FarmhubUser farmhubUser,
    required String shopName,
    required Address shopAddress,
  }) async {
    final Shop newShop = Shop(
      creatorUserId: farmhubUser.uid,
      shopId: "UNKNOWN_ID",
      shopName: shopName,
      address: shopAddress,
    );

    if (farmhubUser.userType != UserType.farmer || farmhubUser.userType != UserType.business) {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Farm.",
        stackTrace: StackTrace.current,
      );
    }

    //! Start with updating the [userShops] sub-collection of the given user
    final newShopId = await firebaseFirestore
        .collection(FS_USER)
        .doc(farmhubUser.uid)
        .collection(FS_USER_SHOP)
        .add(newShop.toJson())
        .then((doc) async {
      doc.update({"shopId": doc.id});
      return doc.id;
    });

    //! Create the new [Shop] in the [shops] global collection
    await firebaseFirestore.collection(FS_GLOBAL_SHOP).doc(newShopId).set(newShop.toJson());

    return newShop.copyWith(shopId: newShopId);
  }

  @override
  Future<Unit> deleteFarm({required FarmhubUser farmhubUser, required String farmId}) async {
    if (farmhubUser.userType != UserType.farmer || farmhubUser.userType != UserType.business) {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Farm.",
        stackTrace: StackTrace.current,
      );
    }

    //! Delete the [Farm] in [farms] global collection
    await firebaseFirestore.collection(FS_GLOBAL_FARM).doc(farmId).delete();

    //! Delete the [Farm] in [userFarms] sub-collection
    await firebaseFirestore
        .collection(FS_USER)
        .doc(farmhubUser.uid)
        .collection(FS_USER_FARM)
        .doc(farmId)
        .delete();

    return unit;
  }

  @override
  Future<Unit> deleteShop({required FarmhubUser farmhubUser, required String shopId}) async {
    if (farmhubUser.userType != UserType.farmer || farmhubUser.userType != UserType.business) {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Farm.",
        stackTrace: StackTrace.current,
      );
    }

    //! Delete the [Shop] in [shops] global collection
    await firebaseFirestore.collection(FS_GLOBAL_SHOP).doc(shopId).delete();

    //! Delete the [Shop] in [userShops] sub-collection
    await firebaseFirestore
        .collection(FS_USER)
        .doc(farmhubUser.uid)
        .collection(FS_USER_SHOP)
        .doc(shopId)
        .delete();

    return unit;
  }

  @override
  Future<Unit> updateFarm({required FarmhubUser farmhubUser, required Farm farm}) async {
    if (farmhubUser.userType != UserType.farmer || farmhubUser.userType != UserType.business) {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Farm.",
        stackTrace: StackTrace.current,
      );
    }

    //! Update [Farm] in [userFarms] sub-collection
    await firebaseFirestore
        .collection(FS_USER)
        .doc(farmhubUser.uid)
        .collection(FS_USER_FARM)
        .doc(farm.farmId)
        .update(farm.toJson());

    //! Update [Farm] is [farms] global collection
    await firebaseFirestore.collection(FS_GLOBAL_FARM).doc(farm.farmId).update(farm.toJson());

    return unit;
  }

  @override
  Future<Unit> updateShop({required FarmhubUser farmhubUser, required Shop shop}) async {
    if (farmhubUser.userType != UserType.farmer || farmhubUser.userType != UserType.business) {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Farm.",
        stackTrace: StackTrace.current,
      );
    }

    //! Update [Shop] in [userShops] sub-collection
    await firebaseFirestore
        .collection(FS_USER)
        .doc(farmhubUser.uid)
        .collection(FS_USER_SHOP)
        .doc(shop.shopId)
        .update(shop.toJson());

    //! Update [Shop] in [shops] global collection
    await firebaseFirestore.collection(FS_GLOBAL_SHOP).doc(shop.shopId).update(shop.toJson());

    return unit;
  }

  @override
  Future<List<Farm>> getUserFarms({required FarmhubUser farmhubUser}) async {
    //! This can return a list of [Farm]s, if need to, change when implementing multiple farms
    final List<Farm> retrievedFarmList = await firebaseFirestore
        .collection(FS_USER)
        .doc(farmhubUser.uid)
        .collection(FS_USER_FARM)
        .get()
        .then((querySnapshot) {
      final List<Farm> farmList = [];

      for (QueryDocumentSnapshot<Map<String, dynamic>> doc in querySnapshot.docs) {
        farmList.add(Farm.fromJson(doc.data()));
      }
      return farmList;
    });

    return retrievedFarmList;
  }

  @override
  Future<List<Shop>> getUserShops({required FarmhubUser farmhubUser}) async {
    final List<Shop> retrievedShop = await firebaseFirestore
        .collection(FS_USER)
        .doc(farmhubUser.uid)
        .collection(FS_USER_SHOP)
        .get()
        .then((querySnapshot) {
      final List<Shop> shopList = [];

      for (QueryDocumentSnapshot<Map<String, dynamic>> doc in querySnapshot.docs) {
        shopList.add(Shop.fromJson(doc.data()));
      }
      return shopList;
    });

    return retrievedShop;
  }
}
