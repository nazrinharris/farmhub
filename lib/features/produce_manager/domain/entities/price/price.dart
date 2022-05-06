import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/exceptions.dart';

part 'price.freezed.dart';
part 'price.g.dart';

@freezed
class Price with _$Price {
  factory Price({
    required num currentPrice,
    required String priceDate,
    required List<num> allPrices,
    required DateTime priceDateTimeStamp,
    required bool isAverage,
    required String priceId,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  static Price fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      throw UnexpectedException(
        code: 'Price-fromMap',
        message: "Map is null.",
        stackTrace: StackTrace.current,
      );
    }

    DateTime priceDateTimeStamp = (map["priceDateTimeStamp"] as Timestamp).toDate();

    return Price(
      currentPrice: map["currentPrice"],
      priceDate: map["priceDate"],
      allPrices: List<num>.from(map["allPrices"]),
      priceDateTimeStamp: priceDateTimeStamp,
      isAverage: map["isAverage"],
      priceId: map["priceId"],
    );
  }
}

@freezed
class PriceSnippet with _$PriceSnippet {
  factory PriceSnippet({
    required num price,
    required String priceDate,
  }) = _PriceSnippet;
}
