import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/util/misc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/exceptions.dart';

part 'price.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Price with _$Price {
  factory Price({
    required num currentPrice,
    required String priceDate,
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
      priceDateTimeStamp: priceDateTimeStamp,
      isAverage: map["isAverage"],
      priceId: map["priceId"],
      allPricesWithDateList: allPricesWithDateList,
    );
  }

  static Map<String, dynamic> toMap(Price price) {
    Map<String, dynamic> allPricesMap = {};

    for (PriceSnippet priceSnippet in price.allPricesWithDateList) {
      allPricesMap[priceSnippet.priceDate] = priceSnippet.price;
    }

    return {
      "currentPrice": price.currentPrice,
      "isAverage": price.isAverage,
      "priceDate": price.priceDate,
      "priceDateTimeStamp": price.priceDateTimeStamp,
      "priceId": price.priceId,
      "allPricesMap": allPricesMap,
    };
  }
}

@freezed
class PriceSnippet with _$PriceSnippet {
  factory PriceSnippet({
    required num price,
    required String priceDate,
  }) = _PriceSnippet;

  static List<PriceSnippet> fromAggregateToList(Map<String, dynamic> map) {
    final List<PriceSnippet> pricesList = [];
    map["prices-map"].forEach((date, price) {
      pricesList.add(PriceSnippet(price: price, priceDate: date));
    });

    return pricesList;
  }
}
