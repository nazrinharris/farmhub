import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'package:flutter/foundation.dart';
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

    debugPrint(farmhubUser.userType.toString());
    late String newFarmId;

    if (farmhubUser.userType == UserType.farmer || farmhubUser.userType == UserType.business) {
      //! Start with creating the [Farm] in the global collection
      newFarmId = await firebaseFirestore
          .collection(FS_GLOBAL_FARM)
          .add(newFarm.toJson())
          .then((doc) async {
        await doc.update({"farmId": doc.id});
        return doc.id;
      });

      //! Update the [userFarms] map inside the user doc
      await firebaseFirestore.collection(FS_USER).doc(farmhubUser.uid).update({
        "userFarms.$newFarmId": farmName,
      });
    } else {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Farm.",
        stackTrace: StackTrace.current,
      );
    }

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

    late String newShopId;

    if (farmhubUser.userType == UserType.farmer || farmhubUser.userType == UserType.business) {
      //! Start with creating the [Shop] in the global collection
      newShopId = await firebaseFirestore
          .collection(FS_GLOBAL_SHOP)
          .add(newShop.toJson())
          .then((doc) async {
        await doc.update({"shopId": doc.id});
        return doc.id;
      });

      //! Update the [userShops] map inside the user doc
      await firebaseFirestore.collection(FS_USER).doc(farmhubUser.uid).update({
        "userShops.$newShopId": shopName,
      });
    } else {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Shop.",
        stackTrace: StackTrace.current,
      );
    }

    return newShop.copyWith(shopId: newShopId);
  }

  @override
  Future<Unit> deleteFarm({required FarmhubUser farmhubUser, required String farmId}) async {
    if (farmhubUser.userType == UserType.farmer || farmhubUser.userType == UserType.business) {
      //! Delete the [Farm] in the global collection
      await firebaseFirestore.collection(FS_GLOBAL_FARM).doc(farmId).delete();

      //! Remove the [Farm] from [userFarms] map inside the user doc
      await firebaseFirestore.collection(FS_USER).doc(farmhubUser.uid).update({
        "userFarms.$farmId": FieldValue.delete(),
      });
    } else {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to delete this farm",
        stackTrace: StackTrace.current,
      );
    }

    return unit;
  }

  @override
  Future<Unit> deleteShop({required FarmhubUser farmhubUser, required String shopId}) async {
    if (farmhubUser.userType == UserType.farmer || farmhubUser.userType == UserType.business) {
      //! Delete the [Shop] in the global collection
      await firebaseFirestore.collection(FS_GLOBAL_SHOP).doc(shopId).delete();

      //! Remove the [Shop] from [userShops] map inside the user doc
      await firebaseFirestore.collection(FS_USER).doc(farmhubUser.uid).update({
        "userShops.$shopId": FieldValue.delete(),
      });
    } else {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to delete this shop",
        stackTrace: StackTrace.current,
      );
    }

    return unit;
  }

  @override
  Future<Unit> updateFarm({required FarmhubUser farmhubUser, required Farm farm}) async {
    debugPrint("UID -> ${farmhubUser.uid}");

    if (farmhubUser.userType == UserType.farmer || farmhubUser.userType == UserType.business) {
      //! Update the [Farm] in the global collection
      await firebaseFirestore.collection(FS_GLOBAL_FARM).doc(farm.farmId).update(farm.toJson());

      //! Update the [farmName] in the [userFarms] map inside the user document
      await firebaseFirestore.collection(FS_USER).doc(farmhubUser.uid).update({
        "userFarms.${farm.farmId}": farm.farmName,
      });
    } else {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Farm.",
        stackTrace: StackTrace.current,
      );
    }

    return unit;
  }

  @override
  Future<Unit> updateShop({required FarmhubUser farmhubUser, required Shop shop}) async {
    if (farmhubUser.userType == UserType.farmer || farmhubUser.userType == UserType.business) {
      //! Update the [Shop] in the global collection
      await firebaseFirestore.collection(FS_GLOBAL_SHOP).doc(shop.shopId).update(shop.toJson());

      //! Update the [shopName] in the [userShop] map inside the user document
      await firebaseFirestore.collection(FS_USER).doc(farmhubUser.uid).update({
        "userShops.${shop.shopId}": shop.shopName,
      });
    } else {
      throw FarmShopManagerException(
        code: FSM_ERR_NOT_FARMER_OR_BUSINESS,
        message: "You don't have permission to create a Farm.",
        stackTrace: StackTrace.current,
      );
    }

    return unit;
  }

  @override
  Future<List<Farm>> getUserFarms({required FarmhubUser farmhubUser}) async {
    //! This can return a list of [Farm]s, if need to, change when implementing multiple farms
    final List<Farm> retrievedFarmList = await firebaseFirestore
        .collection(FS_GLOBAL_FARM)
        .where("creatorUserId", isEqualTo: farmhubUser.uid)
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
        .collection(FS_GLOBAL_SHOP)
        .where("creatorUserId", isEqualTo: farmhubUser.uid)
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
