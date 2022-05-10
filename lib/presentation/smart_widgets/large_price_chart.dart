// ignore_for_file: prefer_const_constructors

import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
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
      case LargePriceChartType.oneM:
        if (oneMonthPricesList == null) {
          return const TwoLinedErrorText(
            firstLineMessage: "It seems like there are no prices.",
            secondLineMessage:
                "This is most likely because this produce is very new and has not yet been updated",
          );
        } else {
          if (oneMonthPricesList!.length == 1) {
            return const TwoLinedErrorText(
              firstLineMessage: "Uh oh, we can't draw the chart",
              secondLineMessage: "This is because there is only one price for this Produce.",
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
          if (twoMonthPricesList!.length == 1) {
            return const TwoLinedErrorText(
              firstLineMessage: "Uh oh, we can't draw the chart",
              secondLineMessage: "This is because there is only one price for this Produce.",
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
              firstLineMessage: "Uh oh, we can't draw the chart",
              secondLineMessage: "This is because there is only one price for this Produce.",
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
            return const TwoLinedErrorText(
              firstLineMessage: "Uh oh, we can't draw the chart",
              secondLineMessage: "This is because there is only one price for this Produce.",
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
            key: ValueKey("large-one-week-chart"),
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

class LargeTwoWeekChart extends StatelessWidget {
  final Produce produce;
  final List<PriceSnippet> twoWeeksPricesList;

  const LargeTwoWeekChart(this.produce, this.twoWeeksPricesList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (twoWeeksPricesList.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(twoWeeksPricesList);
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

    final random = Random();
    final randomInt = random.nextInt(10000);

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
            key: ValueKey("$randomInt"),
            dataSource: twoWeeksPricesList,
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

class LargeOneMonthChart extends StatelessWidget {
  final Produce produce;
  final List<PriceSnippet> oneMonthPricesList;

  const LargeOneMonthChart(this.produce, this.oneMonthPricesList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (oneMonthPricesList.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(oneMonthPricesList);
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

    oneMonthPricesList.sort((a, b) {
      DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
      DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

      return aPriceDate.compareTo(bPriceDate);
    });

    final random = Random();
    final randomInt = random.nextInt(10000);

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
            key: ValueKey("$randomInt"),
            dataSource: oneMonthPricesList,
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

class LargeTwoMonthChart extends StatelessWidget {
  final Produce produce;
  final List<PriceSnippet> oneMonthPricesList;

  const LargeTwoMonthChart(this.produce, this.oneMonthPricesList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (oneMonthPricesList.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(oneMonthPricesList);
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

    oneMonthPricesList.sort((a, b) {
      DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
      DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

      return aPriceDate.compareTo(bPriceDate);
    });

    final random = Random();
    final randomInt = random.nextInt(10000);

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
            key: ValueKey("$randomInt"),
            dataSource: oneMonthPricesList,
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

class LargeSixMonthChart extends StatelessWidget {
  final Produce produce;
  final List<PriceSnippet> oneMonthPricesList;

  const LargeSixMonthChart(this.produce, this.oneMonthPricesList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (oneMonthPricesList.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(oneMonthPricesList);
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

    oneMonthPricesList.sort((a, b) {
      DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
      DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

      return aPriceDate.compareTo(bPriceDate);
    });

    final random = Random();
    final randomInt = random.nextInt(10000);

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
            key: ValueKey("$randomInt"),
            dataSource: oneMonthPricesList,
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

class LargeOneYearChart extends StatelessWidget {
  final Produce produce;
  final List<PriceSnippet> oneMonthPricesList;

  const LargeOneYearChart(this.produce, this.oneMonthPricesList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late bool isNegative;
    late LinearGradient gradient;
    late Color borderColor;

    if (oneMonthPricesList.length < 2) {
      isNegative = false;
    } else {
      isNegative = resolveIsNegative(oneMonthPricesList);
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

    oneMonthPricesList.sort((a, b) {
      DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
      DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

      return aPriceDate.compareTo(bPriceDate);
    });

    final random = Random();
    final randomInt = random.nextInt(10000);

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
            key: ValueKey("$randomInt"),
            dataSource: oneMonthPricesList,
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

  const TwoLinedErrorText({Key? key, this.firstLineMessage, this.secondLineMessage})
      : super(key: key);

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
