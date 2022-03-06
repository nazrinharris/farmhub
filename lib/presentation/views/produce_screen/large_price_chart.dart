import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import 'bloc/produce_screen_bloc.dart';

class LargePriceChart extends StatelessWidget {
  final Produce produce;

  const LargePriceChart(this.produce, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProduceScreenBloc, ProduceScreenState>(
      builder: (context, state) {
        if (state.props.index == 0) {
          return _buildOneWeekChart(produce);
        } else {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 220,
            child: const Center(
              child: Text('Not implemented'),
            ),
          );
        }
      },
    );
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
