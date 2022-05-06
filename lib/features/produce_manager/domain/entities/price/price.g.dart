// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Price _$$_PriceFromJson(Map<String, dynamic> json) => _$_Price(
      currentPrice: (json['currentPrice'] as num).toDouble(),
      priceDate: json['priceDate'] as String,
      allPrices:
          (json['allPrices'] as List<dynamic>).map((e) => e as num).toList(),
      priceDateTimeStamp: DateTime.parse(json['priceDateTimeStamp'] as String),
      isAverage: json['isAverage'] as bool,
      priceId: json['priceId'] as String,
    );

Map<String, dynamic> _$$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'currentPrice': instance.currentPrice,
      'priceDate': instance.priceDate,
      'allPrices': instance.allPrices,
      'priceDateTimeStamp': instance.priceDateTimeStamp.toIso8601String(),
      'isAverage': instance.isAverage,
      'priceId': instance.priceId,
    };
