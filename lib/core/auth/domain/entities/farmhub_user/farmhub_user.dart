// ignore_for_file: unused_element

import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../../features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import '../../../../errors/exceptions.dart';

part 'farmhub_user.freezed.dart';

enum UserType { farmer, business, regular, admin }

extension UserTypeExt on UserType {
  String get typeAsString {
    switch (this) {
      case UserType.farmer:
        return "farmer";
      case UserType.business:
        return "business";
      case UserType.regular:
        return "regular";
      case UserType.admin:
        return "admin";
      default:
        throw Exception();
    }
  }
}

UserType returnType(String typeAsString) {
  switch (typeAsString) {
    case "farmer":
      return UserType.farmer;
    case "business":
      return UserType.business;
    case "regular":
      return UserType.regular;
    case "admin":
      return UserType.admin;
    default:
      throw UnexpectedException(
        code: FU_ERR_STR_TYPE,
        message: "Unexpected String as a UserType",
        stackTrace: StackTrace.current,
      );
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
class FarmhubUser with _$FarmhubUser {
  const FarmhubUser._();

  factory FarmhubUser({
    required String uid,
    required String email,
    required String username,
    required String createdAt,
    required List<ProduceFavorite> produceFavoritesList,
    required UserType userType,
  }) = _FarmhubUser;

  static FarmhubUser fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      throw UnexpectedException(
        code: 'Produce-fromMap',
        message: "Map is null.",
        stackTrace: StackTrace.current,
      );
    }

    final Map<String, dynamic> produceFavoritesMap = map["produceFavoritesMap"];
    final List<ProduceFavorite> produceFavoritesList = [];

    produceFavoritesMap.forEach((key, value) {
      DateTime dateAddedTimeStamp = DateFormat("yyyy-MM-dd hh:mm:ss aaa").parse(value);
      produceFavoritesList.add(ProduceFavorite(produceId: key, dateAdded: dateAddedTimeStamp));
    });

    return FarmhubUser(
      uid: map["uid"],
      email: map["email"],
      username: map["username"],
      createdAt: map["createdAt"],
      produceFavoritesList: produceFavoritesList,
      userType: returnType(map["userType"]),
    );
  }

  static Map<String, dynamic> toMap(FarmhubUser user) {
    final produceFavoritesMap = {};

    for (ProduceFavorite produceFavorite in user.produceFavoritesList) {
      String currentFormattedTime =
          DateFormat("yyyy-MM-dd hh:mm:ss aaa").format(produceFavorite.dateAdded);

      produceFavoritesMap[produceFavorite.produceId] = currentFormattedTime;
    }

    return {
      "createdAt": user.createdAt,
      "email": user.email,
      "produceFavoritesMap": produceFavoritesMap,
      "uid": user.uid,
      "username": user.username,
      "userType": user.userType.typeAsString,
    };
  }

  const factory FarmhubUser.farmer({
    required String uid,
    required String email,
    required String username,
    required String createdAt,
    required List<ProduceFavorite> produceFavoritesList,
    required UserType userType,
    required List<Farm> farmList,
    required List<Shop> shopList,
  }) = FarmhubUserFarmer;

  const factory FarmhubUser.business({
    required String uid,
    required String email,
    required String username,
    required String createdAt,
    required List<ProduceFavorite> produceFavoritesList,
    required UserType userType,
    required List<Farm> farmList,
    required List<Shop> shopList,
  }) = FarmhubUserBusiness;
}
