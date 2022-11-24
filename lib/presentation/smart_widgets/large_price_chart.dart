import 'package:farmhub/core/util/printer.dart';
import 'package:farmhub/features/produce_manager/data/repository/produce_manager_helpers.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:farmhub/presentation/shared_widgets/cards.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'dart:math';
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
        debugPrint("One Week Prices");
        prettyPrintJson(produce.weeklyPrices);
        if (produce.weeklyPrices.length <= 1) {
          return const TwoLinedErrorText(
            firstLineMessage: "There are not enough prices this week",
            secondLineMessage: "Try checking the two weeks graph",
          );
        }
        return LargeOneWeekChart(produce);
      case LargePriceChartType.twoW:
        debugPrint("Two Week Prices");
        debugPrint(twoWeeksPricesList.toString());
        if (twoWeeksPricesList == null) {
          return const TwoLinedErrorText(
            firstLineMessage: "It seems like there are no prices.",
            secondLineMessage:
                "This is most likely because this produce is very new and has not yet been updated",
          );
        } else {
          if (twoWeeksPricesList!.length <= 1) {
            return const TwoLinedErrorText(
              firstLineMessage: "There are not enough prices for the last two weeks",
              secondLineMessage: "Try checking the one month graph",
            );
          }
          return LargeTwoWeekChart(produce, twoWeeksPricesList!);
        }
      case LargePriceChartType.oneM:
        debugPrint("One Month Prices");
        debugPrint(oneMonthPricesList.toString());
        if (oneMonthPricesList == null) {
          return const TwoLinedErrorText(
            firstLineMessage: "It seems like there are no prices.",
            secondLineMessage:
                "This is most likely because this produce is very new and has not yet been updated",
          );
        } else {
          if (oneMonthPricesList!.length <= 1) {
            return const TwoLinedErrorText(
              firstLineMessage: "There are not enough prices for the last month",
              secondLineMessage: "Try checking the two months graph",
            );
          }
          return LargeOneMonthChart(produce, oneMonthPricesList!);
        }
      case LargePriceChartType.twoM:
        if (twoMonthPricesList == null) {
          return const TwoLinedErrorText(
            firstLineMessage: "It seems like there are no prices.",
            secondLineMessage:
                "This is most likely because this produce is very new and has not yet been updated",
          );
        } else {
          if (twoMonthPricesList!.length <= 1) {
            return const TwoLinedErrorText(
              firstLineMessage: "There are not enough prices for the last two months",
              secondLineMessage: "Try checking the six months graph",
            );
          }
          return LargeTwoMonthChart(produce, twoMonthPricesList!);
        }
      case LargePriceChartType.sixM:
        if (sixMonthPricesList == null) {
          return const TwoLinedErrorText(
            firstLineMessage: "It seems like there are no prices.",
            secondLineMessage:
                "This is most likely because this produce is very new and has not yet been updated",
          );
        } else {
          if (sixMonthPricesList!.length == 1) {
            return const TwoLinedErrorText(
              firstLineMessage: "There are not enough prices for the last six months",
              secondLineMessage: "Try checking the one year graph",
            );
          }
          return LargeSixMonthChart(produce, sixMonthPricesList!);
        }
      case LargePriceChartType.oneY:
        if (oneYearPricesList == null) {
          return const TwoLinedErrorText(
            firstLineMessage: "It seems like there are no prices.",
            secondLineMessage:
                "This is most likely because this produce is very new and has not yet been updated",
          );
        } else {
          if (oneYearPricesList!.length == 1) {
            return TwoLinedErrorText(
              firstLineMessage: "There are not enough prices for the last year",
              secondLineMessage: "",
              bottomWidget: ProduceWarningCard(produce),
            );
          }
          return LargeOneYearChart(produce, oneYearPricesList!);
        }
      default:
        return const TwoLinedErrorText(
          firstLineMessage: "Huh, something feels wrong.",
          secondLineMessage: "If you see this, then it is most likely a bug. Please report it!",
        );
    }
  }
}

class LargeOneWeekChart extends StatefulWidget {
  final Produce produce;

  const LargeOneWeekChart(this.produce, {Key? key}) : super(key: key);

  @override
  State<LargeOneWeekChart> createState() => _LargeOneWeekChartState();
}

class _LargeOneWeekChartState extends State<LargeOneWeekChart> {
  late TooltipBehavior tooltipBehavior;

  @override
  void initState() {
    super.initState();

    tooltipBehavior = TooltipBehavior(
      enable: true,
      header: widget.produce.produceName,
      format: "point.x - RM point.y/kg",
    );
  }

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (widget.produce.weeklyPrices.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(widget.produce);
    }

    if (isNegative) {
      gradient = LinearGradient(
        colors: [
          const Color(0xffEC6666),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 220, 79, 79);
    } else {
      gradient = LinearGradient(
        colors: [
          const Color(0xff79D2DE),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 85, 189, 202);
    }

    // Begin process of transtaling weeklyPricesMap
    final Map<String, dynamic> weeklyPricesMap = widget.produce.weeklyPrices;
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
        .format(DateFormat("dd-MM-yyyy").parse(widget.produce.currentProducePrice["priceDate"]));

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 250,
      child: SfCartesianChart(
        tooltipBehavior: tooltipBehavior,
        primaryXAxis: CategoryAxis(
          labelPlacement: LabelPlacement.onTicks,
        ),
        primaryYAxis: NumericAxis(),
        plotAreaBorderColor: Colors.transparent,
        series: <CartesianSeries>[
          SplineAreaSeries<PriceSnippet, String>(
            enableTooltip: true,
            key: const ValueKey("large-one-week-chart"),
            dataSource: pricesList,
            xValueMapper: (priceSnippet, index) {
              DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
              return DateFormat('d/M').format(priceDate);
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

class LargeTwoWeekChart extends StatefulWidget {
  final Produce produce;
  final List<PriceSnippet> twoWeeksPricesList;

  const LargeTwoWeekChart(this.produce, this.twoWeeksPricesList, {Key? key}) : super(key: key);

  @override
  State<LargeTwoWeekChart> createState() => _LargeTwoWeekChartState();
}

class _LargeTwoWeekChartState extends State<LargeTwoWeekChart> {
  late TooltipBehavior tooltipBehavior;

  @override
  void initState() {
    super.initState();

    tooltipBehavior = TooltipBehavior(
      enable: true,
      header: widget.produce.produceName,
      format: "point.x - RM point.y/kg",
    );
  }

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (widget.twoWeeksPricesList.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(widget.twoWeeksPricesList);
    }

    if (isNegative) {
      gradient = LinearGradient(
        colors: [
          const Color(0xffEC6666),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 220, 79, 79);
    } else {
      gradient = LinearGradient(
        colors: [
          const Color(0xff79D2DE),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 85, 189, 202);
    }

    final random = Random();
    final randomInt = random.nextInt(10000);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 250,
      child: SfCartesianChart(
        tooltipBehavior: tooltipBehavior,
        primaryXAxis: CategoryAxis(
          labelPlacement: LabelPlacement.onTicks,
        ),
        primaryYAxis: NumericAxis(),
        plotAreaBorderColor: Colors.transparent,
        series: <CartesianSeries>[
          SplineAreaSeries<PriceSnippet, String>(
            enableTooltip: true,
            key: ValueKey("$randomInt"),
            dataSource: widget.twoWeeksPricesList,
            xValueMapper: (priceSnippet, index) {
              DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
              return DateFormat('d/M').format(priceDate);
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

  bool resolveIsNegative(List<PriceSnippet> twoWeeksPricesList) {
    final num currentPrice = twoWeeksPricesList[twoWeeksPricesList.length - 1].price;
    final num previousPrice = twoWeeksPricesList[twoWeeksPricesList.length - 2].price;
    final num change = currentPrice - previousPrice;

    if (change < 0) {
      return true;
    } else {
      return false;
    }
  }
}

class LargeOneMonthChart extends StatefulWidget {
  final Produce produce;
  final List<PriceSnippet> oneMonthPricesList;

  const LargeOneMonthChart(this.produce, this.oneMonthPricesList, {Key? key}) : super(key: key);

  @override
  State<LargeOneMonthChart> createState() => _LargeOneMonthChartState();
}

class _LargeOneMonthChartState extends State<LargeOneMonthChart> {
  late TooltipBehavior tooltipBehavior;

  @override
  void initState() {
    super.initState();

    tooltipBehavior = TooltipBehavior(
      enable: true,
      header: widget.produce.produceName,
      format: "point.x - RM point.y/kg",
    );
  }

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (widget.oneMonthPricesList.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(widget.oneMonthPricesList);
    }

    if (isNegative) {
      gradient = LinearGradient(
        colors: [
          const Color(0xffEC6666),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 220, 79, 79);
    } else {
      gradient = LinearGradient(
        colors: [
          const Color(0xff79D2DE),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 85, 189, 202);
    }

    final random = Random();
    final randomInt = random.nextInt(10000);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 250,
      child: SfCartesianChart(
        tooltipBehavior: tooltipBehavior,
        primaryXAxis: CategoryAxis(
          labelPlacement: LabelPlacement.onTicks,
        ),
        primaryYAxis: NumericAxis(),
        plotAreaBorderColor: Colors.transparent,
        series: <CartesianSeries>[
          SplineAreaSeries<PriceSnippet, String>(
            enableTooltip: true,
            key: ValueKey("$randomInt"),
            dataSource: widget.oneMonthPricesList,
            xValueMapper: (priceSnippet, index) {
              DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
              return DateFormat('d/M').format(priceDate);
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

  bool resolveIsNegative(List<PriceSnippet> oneMonthPricesList) {
    final num currentPrice = oneMonthPricesList[oneMonthPricesList.length - 1].price;
    final num previousPrice = oneMonthPricesList[oneMonthPricesList.length - 2].price;
    final num change = currentPrice - previousPrice;

    if (change < 0) {
      return true;
    } else {
      return false;
    }
  }
}

class LargeTwoMonthChart extends StatefulWidget {
  final Produce produce;
  final List<PriceSnippet> twoMonthPricesList;

  const LargeTwoMonthChart(this.produce, this.twoMonthPricesList, {Key? key}) : super(key: key);

  @override
  State<LargeTwoMonthChart> createState() => _LargeTwoMonthChartState();
}

class _LargeTwoMonthChartState extends State<LargeTwoMonthChart> {
  late TooltipBehavior tooltipBehavior;

  @override
  void initState() {
    super.initState();

    tooltipBehavior = TooltipBehavior(
      enable: true,
      header: widget.produce.produceName,
      format: "point.x - RM point.y/kg",
    );
  }

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (widget.twoMonthPricesList.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(widget.twoMonthPricesList);
    }

    if (isNegative) {
      gradient = LinearGradient(
        colors: [
          const Color(0xffEC6666),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 220, 79, 79);
    } else {
      gradient = LinearGradient(
        colors: [
          const Color(0xff79D2DE),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 85, 189, 202);
    }

    final random = Random();
    final randomInt = random.nextInt(10000);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 250,
      child: SfCartesianChart(
        tooltipBehavior: tooltipBehavior,
        primaryXAxis: CategoryAxis(
          labelPlacement: LabelPlacement.onTicks,
        ),
        primaryYAxis: NumericAxis(),
        plotAreaBorderColor: Colors.transparent,
        series: <CartesianSeries>[
          SplineAreaSeries<PriceSnippet, String>(
            enableTooltip: true,
            key: ValueKey("$randomInt"),
            dataSource: widget.twoMonthPricesList,
            xValueMapper: (priceSnippet, index) {
              DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
              return DateFormat('d/M').format(priceDate);
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

  bool resolveIsNegative(List<PriceSnippet> twoMonthPricesList) {
    final num currentPrice = twoMonthPricesList[twoMonthPricesList.length - 1].price;
    final num previousPrice = twoMonthPricesList[twoMonthPricesList.length - 2].price;
    final num change = currentPrice - previousPrice;

    if (change < 0) {
      return true;
    } else {
      return false;
    }
  }
}

class LargeSixMonthChart extends StatefulWidget {
  final Produce produce;
  final List<PriceSnippet> sixMonthPricesList;

  const LargeSixMonthChart(this.produce, this.sixMonthPricesList, {Key? key}) : super(key: key);

  @override
  State<LargeSixMonthChart> createState() => _LargeSixMonthChartState();
}

class _LargeSixMonthChartState extends State<LargeSixMonthChart> {
  late TooltipBehavior tooltipBehavior;

  @override
  void initState() {
    super.initState();

    tooltipBehavior = TooltipBehavior(
      enable: true,
      header: widget.produce.produceName,
      format: "point.x - RM point.y/kg",
    );
  }

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (widget.sixMonthPricesList.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(widget.sixMonthPricesList);
    }

    if (isNegative) {
      gradient = LinearGradient(
        colors: [
          const Color(0xffEC6666),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 220, 79, 79);
    } else {
      gradient = LinearGradient(
        colors: [
          const Color(0xff79D2DE),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 85, 189, 202);
    }

    final random = Random();
    final randomInt = random.nextInt(10000);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 250,
      child: SfCartesianChart(
        tooltipBehavior: tooltipBehavior,
        primaryXAxis: CategoryAxis(
          labelPlacement: LabelPlacement.onTicks,
        ),
        primaryYAxis: NumericAxis(),
        plotAreaBorderColor: Colors.transparent,
        series: <CartesianSeries>[
          SplineAreaSeries<PriceSnippet, String>(
            enableTooltip: true,
            key: ValueKey("$randomInt"),
            dataSource: widget.sixMonthPricesList,
            xValueMapper: (priceSnippet, index) {
              DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
              return DateFormat('d/M').format(priceDate);
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

  bool resolveIsNegative(List<PriceSnippet> sixMonthPricesList) {
    final num currentPrice = sixMonthPricesList[sixMonthPricesList.length - 1].price;
    final num previousPrice = sixMonthPricesList[sixMonthPricesList.length - 2].price;
    final num change = currentPrice - previousPrice;

    if (change < 0) {
      return true;
    } else {
      return false;
    }
  }
}

class LargeOneYearChart extends StatefulWidget {
  final Produce produce;
  final List<PriceSnippet> oneYearPricesList;

  const LargeOneYearChart(this.produce, this.oneYearPricesList, {Key? key}) : super(key: key);

  @override
  State<LargeOneYearChart> createState() => _LargeOneYearChartState();
}

class _LargeOneYearChartState extends State<LargeOneYearChart> {
  late TooltipBehavior tooltipBehavior;

  @override
  void initState() {
    super.initState();

    tooltipBehavior = TooltipBehavior(
      enable: true,
      header: widget.produce.produceName,
      format: "point.x - RM point.y/kg",
    );
  }

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (widget.oneYearPricesList.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(widget.oneYearPricesList);
    }

    if (isNegative) {
      gradient = LinearGradient(
        colors: [
          const Color(0xffEC6666),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 220, 79, 79);
    } else {
      gradient = LinearGradient(
        colors: [
          const Color(0xff79D2DE),
          Colors.white.withOpacity(0.1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color.fromARGB(255, 85, 189, 202);
    }

    final random = Random();
    final randomInt = random.nextInt(10000);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 250,
      child: SfCartesianChart(
        tooltipBehavior: tooltipBehavior,
        primaryXAxis: CategoryAxis(
          labelPlacement: LabelPlacement.onTicks,
        ),
        primaryYAxis: NumericAxis(),
        plotAreaBorderColor: Colors.transparent,
        series: <CartesianSeries>[
          SplineAreaSeries<PriceSnippet, String>(
            enableTooltip: true,
            key: ValueKey("$randomInt"),
            dataSource: widget.oneYearPricesList,
            xValueMapper: (priceSnippet, index) {
              DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
              return DateFormat('d/M').format(priceDate);
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

  bool resolveIsNegative(List<PriceSnippet> oneYearPricesList) {
    final num currentPrice = oneYearPricesList[oneYearPricesList.length - 1].price;
    final num previousPrice = oneYearPricesList[oneYearPricesList.length - 2].price;
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
      height: 250,
      child: Center(
        child: Text(message ?? "Not Implemented"),
      ),
    );
  }
}

class TwoLinedErrorText extends StatelessWidget {
  final String? firstLineMessage;
  final String? secondLineMessage;
  final Widget? bottomWidget;

  const TwoLinedErrorText({
    Key? key,
    this.firstLineMessage,
    this.secondLineMessage,
    this.bottomWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 48),
      height: 250,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.money_off,
              color: Theme.of(context).colorScheme.error,
              size: 34,
            ),
            const UIVerticalSpace14(),
            Text(
              firstLineMessage ?? "Not Implemented",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 19),
            ),
            const UIVerticalSpace6(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                secondLineMessage ?? "Not Implemented",
                style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            const UIVerticalSpace14(),
            bottomWidget ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
