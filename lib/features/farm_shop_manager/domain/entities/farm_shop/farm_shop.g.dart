// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Farm _$$_FarmFromJson(Map<String, dynamic> json) => _$_Farm(
      fid: json['fid'] as String,
      farmName: json['farmName'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FarmToJson(_$_Farm instance) => <String, dynamic>{
      'fid': instance.fid,
      'farmName': instance.farmName,
      'address': instance.address.toJson(),
    };

_$_Shop _$$_ShopFromJson(Map<String, dynamic> json) => _$_Shop(
      sid: json['sid'] as String,
      shopName: json['shopName'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShopToJson(_$_Shop instance) => <String, dynamic>{
      'sid': instance.sid,
      'shopName': instance.shopName,
      'address': instance.address.toJson(),
    };
