import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:intl/intl.dart';
import 'package:clock/clock.dart';

enum RangeType { oneW, twoW, oneM, twoM, sixM, oneY }

// TODO: Solve oneM until oneY to account for different length of months
const Map<String, int> rangeTypeInDaysMap = {
  "oneW": 7,
  "twoW": 14,
  "oneM": 31,
  "twoM": 62,
  "sixM": 62,
  "oneY": 62,
};

/// This method converts the given [pricesList] which should be an unsorted list converted from
/// [aggregate-prices].
///
/// If [rangeType] is not specified, it defaults to [twoW]
List<PriceSnippet> pricesToRanged(
  List<PriceSnippet> pricesList, {
  RangeType? rangeType = RangeType.twoW,
}) {
  final DateTime todayTimeStamp = clock.now();

  // This will sort it in such a way that the first index will be the lower bound (oldest date)
  // and the last index will be the upper bound (latest/newest date).
  pricesList.sort((a, b) {
    DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
    DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

    return aPriceDate.compareTo(bPriceDate);
  });

  // We reverse the list because we want the first index to be the upper bound (latest/newest date)
  final reversedPricesList = pricesList.reversed.toList();

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

  final List<PriceSnippet> twoWeeksPricesList = [];
  for (PriceSnippet priceSnippet in reversedPricesList) {
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

    // This means that [priceDate] is within two weeks from [todayTimeStamp]
    if (diff.inDays <= range!) {
      twoWeeksPricesList.add(priceSnippet);
    } else {
      break;
    }
  }

  return twoWeeksPricesList.reversed.toList();
}
