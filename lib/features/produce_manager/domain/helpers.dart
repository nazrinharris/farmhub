import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:intl/intl.dart';
import 'package:clock/clock.dart';

enum RangeType { twoW, oneM, twoM, sixM, oneY }

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
    case RangeType.twoW:
      range = 14;
      break;
    case RangeType.oneM:
      range = 31;
      break;
    case RangeType.twoM:
      range = 62;
      break;
    case RangeType.sixM:
      range = 62;
      break;
    case RangeType.oneY:
      range = 62;
      break;
    default:
  }

  final List<PriceSnippet> twoWeeksPricesList = [];
  for (PriceSnippet priceSnippet in reversedPricesList) {
    final DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
    Duration diff = priceDate.difference(todayTimeStamp);

    // This means that [priceDate] is within two weeks from [todayTimeStamp]
    if (diff.inDays < range!) {
      twoWeeksPricesList.add(priceSnippet);
    } else {
      // We break because at this point, we assume all dates after is over the two week mark.
      break;
    }
  }

  return twoWeeksPricesList;
}
