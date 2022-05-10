import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/util/misc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/exceptions.dart';

part 'price.freezed.dart';

@freezed
class Price with _$Price {
  factory Price({
    required num currentPrice,
    required String priceDate,
    required List<num> allPrices,
    required DateTime priceDateTimeStamp,
    required bool isAverage,
    required String priceId,
    required List<PriceSnippet> allPricesWithDateList,
  }) = _Price;

  static Price fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      throw UnexpectedException(
        code: 'Price-fromMap',
        message: "Map is null.",
        stackTrace: StackTrace.current,
      );
    }

    List<PriceSnippet> allPricesWithDateList = [];

    DateTime priceDateTimeStamp = (map["priceDateTimeStamp"] as Timestamp).toDate();

    map["allPricesMap"].forEach((date, price) {
      allPricesWithDateList.add(PriceSnippet(price: roundNum(price, 2), priceDate: date));
    });

    return Price(
      currentPrice: roundNum(map["currentPrice"], 2),
      priceDate: map["priceDate"],
      allPrices: List<num>.from(map["allPrices"]),
      priceDateTimeStamp: priceDateTimeStamp,
      isAverage: map["isAverage"],
      priceId: map["priceId"],
      allPricesWithDateList: allPricesWithDateList,
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
