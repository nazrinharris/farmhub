import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../features/produce_manager/domain/entities/produce/produce.dart';
import '../views/produce_screen/bloc/produce_screen_bloc.dart';

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
  final LargePriceChartType type;

  const LargePriceChart(this.produce, this.type, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case LargePriceChartType.oneW:
        return LargeOneWeekChart(produce);
      default:
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          height: 220,
          child: const Center(
            child: Text('Not implemented'),
          ),
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
      gradient = const LinearGradient(
        colors: [
          Color(0xffEC6666),
          Color(0xffFFF4F4),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color(0xffEC6666);
    } else {
      gradient = const LinearGradient(
        colors: [
          Color(0xff79D2DE),
          Color(0xffFFF4F4),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      borderColor = const Color(0xff79D2DE);
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

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 220,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(),
        plotAreaBorderColor: Colors.transparent,
        series: <CartesianSeries>[
          SplineAreaSeries<PriceSnippet, String>(
            dataSource: pricesList,
            xValueMapper: (priceSnippet, index) {
              DateTime priceDate = DateFormat("dd-MM-yyyy").parse(priceSnippet.priceDate);
              return DateFormat('EEEE').format(priceDate);
            },
            yValueMapper: (priceSnippet, index) => priceSnippet.price,
            borderColor: borderColor,
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
  const LargeTwoWeekChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
