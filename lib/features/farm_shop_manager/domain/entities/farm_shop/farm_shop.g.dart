// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Farm _$$_FarmFromJson(Map<String, dynamic> json) => _$_Farm(
      creatorUserId: json['creatorUserId'] as String,
      farmId: json['farmId'] as String,
      farmName: json['farmName'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FarmToJson(_$_Farm instance) => <String, dynamic>{
      'creatorUserId': instance.creatorUserId,
      'farmId': instance.farmId,
      'farmName': instance.farmName,
      'address': instance.address.toJson(),
    };

_$_Shop _$$_ShopFromJson(Map<String, dynamic> json) => _$_Shop(
      creatorUserId: json['creatorUserId'] as String,
      shopId: json['shopId'] as String,
      shopName: json['shopName'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShopToJson(_$_Shop instance) => <String, dynamic>{
      'creatorUserId': instance.creatorUserId,
      'shopId': instance.shopId,
      'shopName': instance.shopName,
      'address': instance.address.toJson(),
    };
