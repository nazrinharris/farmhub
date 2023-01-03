// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProduceFavorite _$$_ProduceFavoriteFromJson(Map<String, dynamic> json) =>
    _$_ProduceFavorite(
      produceId: json['produceId'] as String,
      dateAdded: DateTime.parse(json['dateAdded'] as String),
    );

Map<String, dynamic> _$$_ProduceFavoriteToJson(_$_ProduceFavorite instance) =>
    <String, dynamic>{
      'produceId': instance.produceId,
      'dateAdded': instance.dateAdded.toIso8601String(),
    };
