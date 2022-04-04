import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        return _buildOneWeekChart(produce);
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

  Container _buildOneWeekChart(Produce produce) {
    final bool isNegative = resolveIsNegative(produce);
    late LinearGradient gradient;
    late Color borderColor;

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

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 220,
      child: SfCartesianChart(
        plotAreaBorderColor: Colors.transparent,
        series: <CartesianSeries>[
          SplineAreaSeries<num, num>(
            dataSource: produce.weeklyPrices.reversed.toList(),
            xValueMapper: (num price, index) => index,
            yValueMapper: (num price, index) => price,
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
