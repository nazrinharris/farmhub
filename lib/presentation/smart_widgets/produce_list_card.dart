// TODO: Extract ProduceListCard and whatever else that is needed.
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../app_router.dart';
import '../../core/util/misc.dart';
import '../../features/produce_manager/domain/entities/price/price.dart';
import '../../features/produce_manager/domain/entities/produce/produce.dart';
import '../shared_widgets/ui_helpers.dart';

/// [index] is only used to decide if the top border should be rendered or not.
/// [0] If the top border should be drawn and all other numbers will not draw it.
class ProduceListCard extends StatelessWidget {
  final int index;
  final Produce produce;
  final Function()? onTap;
  final double? chartAnimationDuration;

  const ProduceListCard(
    this.index,
    this.produce, {
    Key? key,
    this.onTap,
    this.chartAnimationDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num currentProducePrice = produce.currentProducePrice["price"];
    currentProducePrice = roundDouble(currentProducePrice.toDouble(), 2);

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap ??
            () {
              FocusScope.of(context).unfocus();
              Navigator.of(context).pushNamed('/produce', arguments: ProduceArguments(produce));
            },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
          decoration: BoxDecoration(
            border: Border(
              top: _resolveTop(context, index),
              bottom: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      produce.produceName,
                      maxLines: 3,
                      overflow: TextOverflow.fade,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17),
                    ),
                    const UICustomVertical(2),
                    Text(
                      "RM $currentProducePrice/kg",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    const UICustomVertical(9),
                    ChangeBox(produce),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IgnorePointer(
                      child: SmallPriceChart(
                        produce,
                        index,
                        chartAnimationDuration: chartAnimationDuration,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  BorderSide _resolveTop(BuildContext context, int index) {
    if (index == 0) {
      return BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24));
    } else {
      return BorderSide.none;
    }
  }
}

class ChangeBox extends StatelessWidget {
  final Produce produce;
  final Alignment? alignment;

  const ChangeBox(this.produce, {Key? key, this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num? priceChange = resolvePriceChange(context);
    bool? isNegative;

    if (priceChange != null) {
      isNegative = priceChange < 0;
    }

    if (isNegative != null) {
      return Align(
        alignment: alignment ?? Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 14),
          decoration: BoxDecoration(
            color: _resolveBackgroundColor(context, isNegative),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            _resolveString(priceChange!, isNegative),
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 14,
                  color: _resolveTextColor(context, isNegative),
                ),
          ),
        ),
      );
    } else {
      return Align(
        alignment: alignment ?? Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 14),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            "RM-.--",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
      );
    }
  }

  Container _buildChangeBox(BuildContext context, bool? isNegative, num? priceChange) {
    if (isNegative != null) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
          color: _resolveBackgroundColor(context, isNegative),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          _resolveString(priceChange!, isNegative),
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 14,
                color: _resolveTextColor(context, isNegative),
              ),
        ),
      );
    } else {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          "RM-.--",
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 14,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      );
    }
  }

  String _resolveString(num priceChange, bool isNegative) {
    if (isNegative) {
      return "-RM${priceChange.abs()}";
    } else {
      return "+RM$priceChange";
    }
  }

  num? resolvePriceChange(BuildContext context) {
    // Check if previous price is null
    if (produce.previousProducePrice["price"] == null) {
      return null;
    } else {
      final num currentPrice = produce.currentProducePrice["price"];
      final num previousPrice = produce.previousProducePrice["price"];
      final num change = currentPrice - previousPrice;

      return roundDouble(change.toDouble(), 2);
    }
  }

  Color _resolveBackgroundColor(BuildContext context, bool isNegative) {
    if (isNegative) {
      return Theme.of(context).colorScheme.error;
    } else {
      return Theme.of(context).colorScheme.secondaryVariant;
    }
  }

  Color _resolveTextColor(BuildContext context, bool isNegative) {
    if (isNegative) {
      return Theme.of(context).colorScheme.background;
    } else {
      return Theme.of(context).colorScheme.primary;
    }
  }
}

class SmallPriceChart extends StatelessWidget {
  final double? chartAnimationDuration;

  const SmallPriceChart(
    this.produce,
    this.index, {
    Key? key,
    this.chartAnimationDuration,
  }) : super(key: key);

  final Produce produce;
  final int index;

  @override
  Widget build(BuildContext context) {
    // Check if there is less than two weeklyPrices
    if (produce.weeklyPrices.length < 2) {
      return Container(
        alignment: Alignment.center,
        height: 90,
        width: 120,
        child: Text(
          'Not enough data for chart',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.caption,
        ),
      );
    } else {
      final bool isNegative = resolveIsNegative(produce);
      late LinearGradient gradient;
      late Color borderColor;

      if (isNegative) {
        gradient = LinearGradient(
          colors: [
            Color(0xffEC6666),
            Color(0xffFFF4F4).withOpacity(0.1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        );
        borderColor = const Color(0xffEC6666);
      } else {
        gradient = LinearGradient(
          colors: [
            Color(0xff79D2DE),
            Color(0xffFFF4F4).withOpacity(0.1),
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

      // This sorts the price in ascending order. [0] being the most old and the last index being
      // the most newest date.
      pricesList.sort((a, b) {
        DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
        DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

        return aPriceDate.compareTo(bPriceDate);
      });

      return SizedBox(
        height: 90,
        width: 120,
        child: SfCartesianChart(
          plotAreaBorderColor: Colors.transparent,
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          series: <CartesianSeries<PriceSnippet, int>>[
            SplineAreaSeries<PriceSnippet, int>(
              animationDuration: chartAnimationDuration,
              dataSource: pricesList,
              xValueMapper: (priceSnippet, index) => index,
              yValueMapper: (priceSnippet, index) => priceSnippet.price,
              borderWidth: 3,
              borderColor: borderColor,
              gradient: gradient,
            ),
          ],
        ),
      );
    }
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
