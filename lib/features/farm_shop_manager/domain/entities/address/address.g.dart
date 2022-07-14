// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      rawAddress: json['rawAddress'] as String,
      addressLine: json['addressLine'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      postcode: json['postcode'] as int,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'rawAddress': instance.rawAddress,
      'addressLine': instance.addressLine,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
    };
