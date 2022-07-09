import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/core/util/misc.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/features/produce_manager/domain/helpers.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';

Widget determineErrorCard(String errorCode) {
  if (errorCode == ERROR_NO_INTERNET_CONNECTION) {
    return const ErrorNoInternetCard();
  } else {
    return const SizedBox.shrink();
  }
}

class ErrorNoInternetCard extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;

  const ErrorNoInternetCard({Key? key, this.top, this.bottom, this.right, this.left})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: top ?? 0,
        bottom: bottom ?? 0,
        right: right ?? 0,
        left: left ?? 0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.error.withOpacity(0.15),
      ),
      child: Row(
        children: [
          Icon(Icons.wifi_off, color: Theme.of(context).colorScheme.error),
          const UIHorizontalSpace14(),
          Flexible(
            child: Text(
              "You are not connected to the internet",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurrentPriceCard extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;
  final Produce produce;

  const CurrentPriceCard(
    this.produce, {
    Key? key,
    this.top,
    this.bottom,
    this.right,
    this.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final num currentProducePrice = roundNum(produce.currentProducePrice["price"] as num, 2);

    return Container(
      margin: EdgeInsets.only(
        top: top ?? 0,
        bottom: bottom ?? 0,
        right: right ?? 0,
        left: left ?? 0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: resolveBackground(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Current Price",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: resolveTextColor(context),
                    ),
              ),
              const UICustomHorizontal(6),
              Text(
                produce.currentProducePrice["priceDate"].toString().replaceAll(RegExp("-"), "/"),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: resolveCaptionTextColor(context),
                      fontSize: 13,
                    ),
              ),
            ],
          ),
          const UIVerticalSpace14(),
          Text(
            "RM${produce.currentProducePrice["price"]}",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: resolveTextColor(context),
                ),
          ),
        ],
      ),
    );
  }

  Color resolveCaptionTextColor(BuildContext context) {
    final bool isNegative = resolveIsNegative(produce);

    if (isNegative) {
      return Theme.of(context).colorScheme.onError.withOpacity(0.5);
    } else {
      return Theme.of(context).colorScheme.primary.withOpacity(0.5);
    }
  }

  Color resolveTextColor(BuildContext context) {
    final bool isNegative = resolveIsNegative(produce);

    if (isNegative) {
      return Theme.of(context).colorScheme.onError;
    } else {
      return Theme.of(context).colorScheme.primary;
    }
  }

  Color resolveBackground(BuildContext context) {
    final bool isNegative = resolveIsNegative(produce);

    if (isNegative) {
      return Theme.of(context).colorScheme.error.withOpacity(0.15);
    } else {
      return Theme.of(context).colorScheme.secondaryVariant.withOpacity(0.15);
    }
  }
}

class PreviousPriceCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final Produce produce;

  const PreviousPriceCard(this.produce, {Key? key, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final num previousProducePrice = roundNum(produce.previousProducePrice["price"] as num, 2);

    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 14),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.grey.withOpacity(0.15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Previous Price", style: Theme.of(context).textTheme.bodyText1),
              const UICustomHorizontal(6),
              Text(
                produce.previousProducePrice["priceDate"].toString().replaceAll(RegExp("-"), "/"),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                      fontSize: 13,
                    ),
              ),
            ],
          ),
          const UIVerticalSpace14(),
          Text(
            "RM${produce.previousProducePrice["price"]}",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
