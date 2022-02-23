// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Price _$$_PriceFromJson(Map<String, dynamic> json) => _$_Price(
      priceId: json['priceId'] as String,
      currentPrice: (json['currentPrice'] as num).toDouble(),
      changeHistory: (json['changeHistory'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      updateDate: json['updateDate'] as String,
    );

Map<String, dynamic> _$$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'priceId': instance.priceId,
      'currentPrice': instance.currentPrice,
      'changeHistory': instance.changeHistory,
      'updateDate': instance.updateDate,
    };
