// ignore_for_file: prefer_const_constructors

import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../features/produce_manager/domain/entities/produce/produce.dart';

enum LargePriceChartType { oneW, twoW, oneM, twoM, sixM, oneY, err }

LargePriceChartType determineChartType(int index) {
  switch (index) {
    case 0:
      return LargePriceChartType.oneW;
    case 1:
      return LargePriceChartType.twoW;
    case 2:
      return LargePriceChartType.oneM;
    case 3:
      return LargePriceChartType.twoM;
    case 4:
      return LargePriceChartType.sixM;
    case 5:
      return LargePriceChartType.oneY;
    default:
      return LargePriceChartType.err;
  }
}

class LargePriceChart extends StatelessWidget {
  final Produce produce;
  final List<PriceSnippet>? twoWeeksPricesList;
  final List<PriceSnippet>? oneMonthPricesList;
  final List<PriceSnippet>? twoMonthPricesList;
  final List<PriceSnippet>? sixMonthPricesList;
  final List<PriceSnippet>? oneYearPricesList;
  final LargePriceChartType type;

  const LargePriceChart(
    this.produce,
    this.type, {
    Key? key,
    this.twoWeeksPricesList,
    this.oneMonthPricesList,
    this.twoMonthPricesList,
    this.sixMonthPricesList,
    this.oneYearPricesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case LargePriceChartType.oneW:
        if (produce.weeklyPrices.length == 1) {
          return const TwoLinedErrorText(
            firstLineMessage: "Uh oh, we can't draw the chart",
            secondLineMessage: "This is because there is only one price for this Produce.",
          );
        }
        return LargeOneWeekChart(produce);
      case LargePriceChartType.twoW:
        if (twoWeeksPricesList == null) {
          return const TwoLinedErrorText(
            firstLineMessage: "It seems like there are no prices.",
            secondLineMessage:
                "This is most likely because this produce is very new and has not yet been updated",
          );
        } else {
          if (twoWeeksPricesList!.length == 1) {
            return const TwoLinedErrorText(
              firstLineMessage: "Uh oh, we can't draw the chart",
              secondLineMessage: "This is because there is only one price for this Produce.",
            );
          }
          return LargeTwoWeekChart(produce, twoWeeksPricesList!);
        }
      default:
        return const TwoLinedErrorText(
          firstLineMessage: "Huh, something feels wrong.",
          secondLineMessage: "If you see this, then it is most likely a bug. Please report it!",
        );
    }
  }
}

class LargeOneWeekChart extends StatelessWidget {
  final Produce produce;

  const LargeOneWeekChart(this.produce, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (produce.weeklyPrices.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(produce);
    }

    if (isNegative) {
      gradient = LinearGradient(
        colors: [
          Color(0xffEC6666),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = Color.fromARGB(255, 220, 79, 79);
    } else {
      gradient = LinearGradient(
        colors: [
          Color(0xff79D2DE),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = Color.fromARGB(255, 85, 189, 202);
    }

    // Begin process of transtaling weeklyPricesMap
    final Map<String, dynamic> weeklyPricesMap = produce.weeklyPrices;
    final List<PriceSnippet> pricesList = [];

    weeklyPricesMap.forEach((priceDate, price) {
      pricesList.add(PriceSnippet(price: price, priceDate: priceDate));
    });

    pricesList.sort((a, b) {
      DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
      DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

      return aPriceDate.compareTo(bPriceDate);
    });

    final month = DateFormat('LLLL')
        .format(DateFormat("dd-MM-yyyy").parse(produce.currentProducePrice["priceDate"]));

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 250,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(
          labelPlacement: LabelPlacement.onTicks,
          rangePadding: ChartRangePadding.round,
        ),
        primaryYAxis: NumericAxis(
          rangePadding: ChartRangePadding.normal,
        ),
        plotAreaBorderColor: Colors.transparent,
        series: <CartesianSeries>[
          SplineAreaSeries<PriceSnippet, String>(
            dataSource: pricesList,
            xValueMapper: (priceSnippet, index) {
              DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
              return DateFormat('dd').format(priceDate);
            },
            yValueMapper: (priceSnippet, index) => priceSnippet.price,
            borderColor: borderColor,
            borderWidth: 3,
            gradient: gradient,
          )
        ],
      ),
    );
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
}

class LargeTwoWeekChart extends StatelessWidget {
  final Produce produce;
  final List<PriceSnippet> twoWeeksPricesList;

  const LargeTwoWeekChart(this.produce, this.twoWeeksPricesList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (produce.weeklyPrices.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(produce);
    }

    if (isNegative) {
      gradient = LinearGradient(
        colors: [
          Color(0xffEC6666),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = Color.fromARGB(255, 220, 79, 79);
    } else {
      gradient = LinearGradient(
        colors: [
          Color(0xff79D2DE),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = Color.fromARGB(255, 85, 189, 202);
    }

    twoWeeksPricesList.sort((a, b) {
      DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
      DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

      return aPriceDate.compareTo(bPriceDate);
    });

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 250,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(
          labelPlacement: LabelPlacement.onTicks,
        ),
        primaryYAxis: NumericAxis(),
        plotAreaBorderColor: Colors.transparent,
        series: <CartesianSeries>[
          SplineAreaSeries<PriceSnippet, String>(
            dataSource: twoWeeksPricesList,
            xValueMapper: (priceSnippet, index) {
              DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
              return DateFormat('dd-MM').format(priceDate);
            },
            yValueMapper: (priceSnippet, index) => priceSnippet.price,
            borderColor: borderColor,
            borderWidth: 3,
            gradient: gradient,
          )
        ],
      ),
    );
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
}

class ErrorText extends StatelessWidget {
  final String? message;

  const ErrorText({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 220,
      child: Center(
        child: Text(message ?? "Not Implemented"),
      ),
    );
  }
}

class TwoLinedErrorText extends StatelessWidget {
  final String? firstLineMessage;
  final String? secondLineMessage;

  const TwoLinedErrorText({Key? key, this.firstLineMessage, this.secondLineMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 48),
      height: 220,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              firstLineMessage ?? "Not Implemented",
              textAlign: TextAlign.center,
            ),
            UIVerticalSpace6(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                secondLineMessage ?? "Not Implemented",
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
