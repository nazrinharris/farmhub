// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Produce _$$_ProduceFromJson(Map<String, dynamic> json) => _$_Produce(
      produceId: json['produceId'] as String,
      produceName: json['produceName'] as String,
      authorId: json['authorId'] as String,
      currentProducePrice: json['currentProducePrice'] as Map<String, dynamic>,
      previousProducePrice:
          json['previousProducePrice'] as Map<String, dynamic>,
      weeklyPrices:
          (json['weeklyPrices'] as List<dynamic>).map((e) => e as num).toList(),
    );

Map<String, dynamic> _$$_ProduceToJson(_$_Produce instance) =>
    <String, dynamic>{
      'produceId': instance.produceId,
      'produceName': instance.produceName,
      'authorId': instance.authorId,
      'currentProducePrice': instance.currentProducePrice,
      'previousProducePrice': instance.previousProducePrice,
      'weeklyPrices': instance.weeklyPrices,
    };
