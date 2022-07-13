// ignore_for_file: unused_element

import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../../features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import '../../../../errors/exceptions.dart';

part 'farmhub_user.freezed.dart';
part 'farmhub_user.g.dart';

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

  @JsonSerializable(explicitToJson: true)
  factory FarmhubUser({
    required String uid,
    required String email,
    required String username,
    required String createdAt,
    required List<ProduceFavorite> produceFavoritesList,
    required UserType userType,
  }) = _FarmhubUser;

  factory FarmhubUser.fromJson(Map<String, dynamic> json) => _$FarmhubUserFromJson(json);

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

  @JsonSerializable(explicitToJson: true)
  const factory FarmhubUser.farmer({
    required String uid,
    required String email,
    required String username,
    required String createdAt,
    required List<ProduceFavorite> produceFavoritesList,
    required UserType userType,
    required List<Farm> userFarms,
    required List<Shop> userShops,
  }) = FarmhubUserFarmer;

  @JsonSerializable(explicitToJson: true)
  const factory FarmhubUser.business({
    required String uid,
    required String email,
    required String username,
    required String createdAt,
    required List<ProduceFavorite> produceFavoritesList,
    required UserType userType,
    required List<Farm> userFarms,
    required List<Shop> userShops,
  }) = FarmhubUserBusiness;

  static FarmhubUserFarmer farmerFromFarmhubUser(FarmhubUser user) {
    return FarmhubUserFarmer(
      uid: user.uid,
      email: user.email,
      username: user.username,
      createdAt: user.createdAt,
      produceFavoritesList: user.produceFavoritesList,
      userType: user.userType,
      userFarms: [],
      userShops: [],
    );
  }

  static FarmhubUserBusiness businessFromFarmhubUser(FarmhubUser user) {
    return FarmhubUserBusiness(
      uid: user.uid,
      email: user.email,
      username: user.username,
      createdAt: user.createdAt,
      produceFavoritesList: user.produceFavoritesList,
      userType: user.userType,
      userFarms: [],
      userShops: [],
    );
  }

  /// This method will only return the respective FarmhubUser type from [UserType], its
  /// [userFarms] and [userShops] should be provided after.
  static FarmhubUser returnRespectiveUserType(
    FarmhubUser farmhubUser, {
    List<Farm>? userFarms,
    List<Shop>? userShops,
  }) {
    final UserType userType = farmhubUser.userType;

    if (userType == UserType.farmer) {
      return FarmhubUser.farmerFromFarmhubUser(farmhubUser);
    } else if (userType == UserType.business) {
      return FarmhubUser.businessFromFarmhubUser(farmhubUser);
    } else {
      return farmhubUser;
    }
  }
}
