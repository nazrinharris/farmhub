// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmhub_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FarmhubUser _$$_FarmhubUserFromJson(Map<String, dynamic> json) =>
    _$_FarmhubUser(
      uid: json['uid'] as String,
      email: json['email'] as String?,
      username: json['username'] as String,
      createdAt: json['createdAt'] as String,
      produceFavoritesList: (json['produceFavoritesList'] as List<dynamic>)
          .map((e) => ProduceFavorite.fromJson(e as Map<String, dynamic>))
          .toList(),
      userType: $enumDecode(_$UserTypeEnumMap, json['userType']),
      phoneNumber: json['phoneNumber'] == null
          ? null
          : PhoneNumber.fromJson(json['phoneNumber'] as Map<String, dynamic>),
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
      'userType': _$UserTypeEnumMap[instance.userType]!,
      'phoneNumber': instance.phoneNumber?.toJson(),
      'runtimeType': instance.$type,
    };

const _$UserTypeEnumMap = {
  UserType.regular: 'regular',
  UserType.admin: 'admin',
  UserType.farmer: 'farmer',
  UserType.business: 'business',
};

_$FarmhubUserFarmer _$$FarmhubUserFarmerFromJson(Map<String, dynamic> json) =>
    _$FarmhubUserFarmer(
      uid: json['uid'] as String,
      email: json['email'] as String?,
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
      phoneNumber: json['phoneNumber'] == null
          ? null
          : PhoneNumber.fromJson(json['phoneNumber'] as Map<String, dynamic>),
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
      'userType': _$UserTypeEnumMap[instance.userType]!,
      'userFarms': instance.userFarms.map((e) => e.toJson()).toList(),
      'userShops': instance.userShops.map((e) => e.toJson()).toList(),
      'phoneNumber': instance.phoneNumber?.toJson(),
      'runtimeType': instance.$type,
    };

_$FarmhubUserBusiness _$$FarmhubUserBusinessFromJson(
        Map<String, dynamic> json) =>
    _$FarmhubUserBusiness(
      uid: json['uid'] as String,
      email: json['email'] as String?,
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
      phoneNumber: json['phoneNumber'] == null
          ? null
          : PhoneNumber.fromJson(json['phoneNumber'] as Map<String, dynamic>),
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
      'userType': _$UserTypeEnumMap[instance.userType]!,
      'userFarms': instance.userFarms.map((e) => e.toJson()).toList(),
      'userShops': instance.userShops.map((e) => e.toJson()).toList(),
      'phoneNumber': instance.phoneNumber?.toJson(),
      'runtimeType': instance.$type,
    };
