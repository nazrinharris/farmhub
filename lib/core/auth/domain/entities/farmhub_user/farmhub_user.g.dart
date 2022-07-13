// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmhub_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FarmhubUser _$$_FarmhubUserFromJson(Map<String, dynamic> json) =>
    _$_FarmhubUser(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      createdAt: json['createdAt'] as String,
      produceFavoritesList: (json['produceFavoritesList'] as List<dynamic>)
          .map((e) => ProduceFavorite.fromJson(e as Map<String, dynamic>))
          .toList(),
      userType: $enumDecode(_$UserTypeEnumMap, json['userType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FarmhubUserToJson(_$_FarmhubUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'createdAt': instance.createdAt,
      'produceFavoritesList':
          instance.produceFavoritesList.map((e) => e.toJson()).toList(),
      'userType': _$UserTypeEnumMap[instance.userType],
      'runtimeType': instance.$type,
    };

const _$UserTypeEnumMap = {
  UserType.farmer: 'farmer',
  UserType.business: 'business',
  UserType.regular: 'regular',
  UserType.admin: 'admin',
};

_$FarmhubUserFarmer _$$FarmhubUserFarmerFromJson(Map<String, dynamic> json) =>
    _$FarmhubUserFarmer(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      createdAt: json['createdAt'] as String,
      produceFavoritesList: (json['produceFavoritesList'] as List<dynamic>)
          .map((e) => ProduceFavorite.fromJson(e as Map<String, dynamic>))
          .toList(),
      userType: $enumDecode(_$UserTypeEnumMap, json['userType']),
      userFarms: (json['userFarms'] as List<dynamic>)
          .map((e) => Farm.fromJson(e as Map<String, dynamic>))
          .toList(),
      userShops: (json['userShops'] as List<dynamic>)
          .map((e) => Shop.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FarmhubUserFarmerToJson(_$FarmhubUserFarmer instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'createdAt': instance.createdAt,
      'produceFavoritesList':
          instance.produceFavoritesList.map((e) => e.toJson()).toList(),
      'userType': _$UserTypeEnumMap[instance.userType],
      'userFarms': instance.userFarms.map((e) => e.toJson()).toList(),
      'userShops': instance.userShops.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$FarmhubUserBusiness _$$FarmhubUserBusinessFromJson(
        Map<String, dynamic> json) =>
    _$FarmhubUserBusiness(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      createdAt: json['createdAt'] as String,
      produceFavoritesList: (json['produceFavoritesList'] as List<dynamic>)
          .map((e) => ProduceFavorite.fromJson(e as Map<String, dynamic>))
          .toList(),
      userType: $enumDecode(_$UserTypeEnumMap, json['userType']),
      userFarms: (json['userFarms'] as List<dynamic>)
          .map((e) => Farm.fromJson(e as Map<String, dynamic>))
          .toList(),
      userShops: (json['userShops'] as List<dynamic>)
          .map((e) => Shop.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FarmhubUserBusinessToJson(
        _$FarmhubUserBusiness instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'createdAt': instance.createdAt,
      'produceFavoritesList':
          instance.produceFavoritesList.map((e) => e.toJson()).toList(),
      'userType': _$UserTypeEnumMap[instance.userType],
      'userFarms': instance.userFarms.map((e) => e.toJson()).toList(),
      'userShops': instance.userShops.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };
