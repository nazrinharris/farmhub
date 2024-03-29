import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:clock/clock.dart';

import '../../domain/entities/produce/produce.dart';

enum RangeType { oneW, twoW, oneM, twoM, sixM, oneY }

const Map<String, int> rangeTypeInDaysMap = {
  "oneW": 7,
  "twoW": 14,
  "oneM": 31,
  "twoM": 62,
  "sixM": 186,
  "oneY": 365,
};

/// This method converts the given [pricesList], which should be an unsorted list converted from
/// [aggregatePrices], into a sorted list depending on the range given.
///
/// If [rangeType] is not specified, it defaults to [twoW]
List<PriceSnippet> pricesToRanged(
  List<PriceSnippet> pricesList, {
  RangeType? rangeType = RangeType.twoW,
}) {
  //?"All Unsorted Prices Length: ${pricesList.length}");

  final DateTime todayTimeStamp = clock.now();

  // This will sort it in such a way that the first index will be the lower bound (oldest date)
  // and the last index will be the upper bound (latest/newest date).
  pricesList.sort((a, b) {
    DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
    DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

    return aPriceDate.compareTo(bPriceDate);
  });

  // PriceSnippet? recentPrice = pricesList.isEmpty ? null : pricesList.last;
  // PriceSnippet? oldestPrice = pricesList.isEmpty ? null : pricesList.first;

  // debugPrint("Most Recent Price - $recentPrice");
  // debugPrint("Most Oldest Price - $oldestPrice");

  // // We reverse the list because we want the first index to be the upper bound (latest/newest date)
  // final reversedPricesList = pricesList.reversed.toList();

  // Set the range
  int? range;
  switch (rangeType) {
    case RangeType.oneW:
      range = rangeTypeInDaysMap["oneW"];
      break;
    case RangeType.twoW:
      range = rangeTypeInDaysMap["twoW"];
      break;
    case RangeType.oneM:
      range = rangeTypeInDaysMap["oneM"];
      break;
    case RangeType.twoM:
      range = rangeTypeInDaysMap["twoM"];
      break;
    case RangeType.sixM:
      range = rangeTypeInDaysMap["sixM"];
      break;
    case RangeType.oneY:
      range = rangeTypeInDaysMap["oneY"];
      break;
    default:
  }

  final List<PriceSnippet> rangedPricesList = [];
  for (PriceSnippet priceSnippet in pricesList) {
    final DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);

    // This will check the difference from [today] to [priceDate]
    Duration diff = todayTimeStamp.difference(priceDate);

    if (diff.inDays < 0) {
      throw UnexpectedException(
        code: "There should not be negative difference from today to the price date",
        message: "Uh oh, an internal error occured.",
        stackTrace: StackTrace.current,
      );
    }

    if (diff.inDays <= range!) {
      rangedPricesList.add(priceSnippet);
    } else {
      continue;
    }
  }

  // debugPrint("Unsorted - $rangeType - Amount: ${rangedPricesList.length}");
  // debugPrint("vvvvv-----------------------------------vvvvv");
  // printList(rangedPricesList);
  // debugPrint("^^^^^-----------------------------------^^^^^");

  // rangedPricesList.sort((a, b) {
  //   DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
  //   DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

  //   return aPriceDate.compareTo(bPriceDate);
  // });

  // debugPrint("Sorted - $rangeType - Amount: ${rangedPricesList.length}");
  // debugPrint("vvvvv-----------------------------------vvvvv");
  // printList(rangedPricesList);
  // debugPrint("^^^^^-----------------------------------^^^^^");
  // debugPrint("");

  return List.from(rangedPricesList);
}

/// This method will loop through [allPricesWithDateList] and returns a new [Price] with an
/// updated [currentPrice].
Price updateCurrentPrice(Price price) {
  final pricesList = price.allPricesWithDateList;

  num sum = 0;
  for (PriceSnippet priceSnippet in pricesList) {
    sum = sum + priceSnippet.price;
  }
  num average = sum / pricesList.length;

  return price.copyWith(currentPrice: average);
}

/// This method will loop through [produceFavoritesList] and returns a [List<String>] of [produceId]s
List<String> produceFavoritesToProduceId(List<ProduceFavorite> produceFavoritesList) {
  final List<String> produceFavoritesIdList = [];

  for (ProduceFavorite favorite in produceFavoritesList) {
    produceFavoritesIdList.add(favorite.produceId);
  }

  return produceFavoritesIdList;
}

/// This method will loop through [Produce] and returns a [List<String>] of [produceId]s
List<String> produceToProduceId(List<Produce> produceList) {
  final List<String> produceIdList = [];

  for (Produce produce in produceList) {
    produceIdList.add(produce.produceId);
  }

  return produceIdList;
}

/// This method will check if the given [produceId] exists within [produceIdList] and return the corresponding
/// [bool]
bool determineIfInList(String produceId, List<String> produceIdList) {
  bool ifInList = false;
  for (String id in produceIdList) {
    if (id == produceId) {
      ifInList = true;
      break;
    }
  }

  return ifInList;
}

bool resolveIsNegative(Produce produce) {
  final num currentPrice = produce.currentProducePrice["price"];
  final num previousPrice = produce.previousProducePrice["price"];
  final num change = currentPrice - previousPrice;

  if (change < 0) {
    return true;
  } else {
    return false;
  }
}

Map<String, dynamic> filterPricesOlderThanOneWeek(Map<String, dynamic> weeklyPrices) {
  final Map<String, dynamic> weeklyPricesMap = weeklyPrices;
  final List<PriceSnippet> pricesList = [];

  weeklyPricesMap.forEach((priceDate, price) {
    pricesList.add(PriceSnippet(price: price, priceDate: priceDate));
  });

  final List<PriceSnippet> filteredPrices = pricesToRanged(pricesList, rangeType: RangeType.oneW);
  Map<String, dynamic> filteredMap = {};

  for (PriceSnippet priceSnippet in filteredPrices) {
    filteredMap[priceSnippet.priceDate] = priceSnippet.price;
  }

  return filteredMap;
}

/// [pricesList] should be the unmodified [aggregatePrices] which have been converted
/// into a list, namely the [pricesList].
void printWhenWasTheLastPrice(List<PriceSnippet> pricesList) {
  if (pricesList.isEmpty) {
    debugPrint("Aggregate map given was empty");
    return;
  }

  // This will sort it in such a way that the first index will be the lower bound (oldest date)
  // and the last index will be the upper bound (latest/newest date).
  pricesList.sort((a, b) {
    DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
    DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);
    return aPriceDate.compareTo(bPriceDate);
  });

  DateTime latestPrice = DateFormat("dd-MM-yyyy").parse(pricesList.last.priceDate);
  num range = DateTime.now().difference(latestPrice).inDays;

  debugPrint("The last price was in ${latestPrice.toIso8601String()} which is $range days ago");
}

/// Expects a JSON in the format {"dd-MM-yyyy": [double]}, with the double being price
/// and converts it into [List<PriceSnippet>]
List<PriceSnippet> aggregateFormatToPricesList(Map<String, dynamic> aggregatePricesMap) {
  if (aggregatePricesMap.isEmpty) {
    debugPrint("Aggregate map given was empty");
    return List.empty();
  }

  final List<PriceSnippet> pricesList = [];
  aggregatePricesMap["prices-map"].forEach((date, price) {
    pricesList.add(PriceSnippet(price: price, priceDate: date));
  });

  return pricesList;
}
