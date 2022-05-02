import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:intl/intl.dart';
import 'package:clock/clock.dart';

List<PriceSnippet> aggregateToTwoWeeks(Map<String, dynamic> aggregatePricesMap) {
  final DateTime todayTimeStamp = clock.now();

  final List<PriceSnippet> pricesList = [];
  aggregatePricesMap.forEach((date, price) {
    pricesList.add(PriceSnippet(price: price, priceDate: date));
  });

  // This will sort it in such a way that the first index will be the lower bound (oldest date)
  // and the last index will be the upper bound (latest/newest date).
  pricesList.sort((a, b) {
    DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
    DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

    return aPriceDate.compareTo(bPriceDate);
  });

  // We reverse the list because we want the first index to be the upper bound (latest/newest date)
  final reversedPricesList = pricesList.reversed.toList();

  final List<PriceSnippet> twoWeeksPricesList = [];
  for (PriceSnippet priceSnippet in reversedPricesList) {
    final DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
    Duration diff = priceDate.difference(todayTimeStamp);

    // This means that [priceDate] is within two weeks from [todayTimeStamp]
    if (diff.inDays < 14) {
      twoWeeksPricesList.add(priceSnippet);
    } else {
      // We break because at this point, we assume all dates after is over the two week mark.
      break;
    }
  }

  return twoWeeksPricesList;
}
