import 'package:farmhub/app_router.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatelessWidget {
  final PriceScreenArguments arguments;

  const PriceScreen(this.arguments, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String produceName = arguments.produce.produceName;
    final num currentPrice = arguments.price.currentPrice;
    final String priceDate = arguments.price.priceDate.replaceAll(RegExp("-"), "/");

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: DefaultAppBar(
        trailingIcon: const Icon(Icons.arrow_back),
        trailingOnPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  produceName,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const UIVerticalSpace24(),
                const UIBorder(margin: EdgeInsets.symmetric(horizontal: 14)),
                const UIVerticalSpace14(),
                Column(
                  children: [
                    Text(
                      "Price",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const UIVerticalSpace6(),
                    resolveIsAverage(context, arguments)
                  ],
                ),
                const UIVerticalSpace24(),
                Column(
                  children: [
                    Text(
                      "Date",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const UIVerticalSpace6(),
                    Text(
                      priceDate,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: const Color(0xff799A61), fontSize: 23),
                    ),
                  ],
                ),
                const UIVerticalSpace24(),
                const UIBorder(margin: EdgeInsets.symmetric(horizontal: 14)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget resolveIsAverage(BuildContext context, PriceScreenArguments arguments) {
    if (arguments.price.isAverage) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "RM ${arguments.price.currentPrice}/kg",
            style: Theme.of(context).textTheme.headline2,
          ),
          const UIHorizontalSpace6(),
          Text(
            "(avg.)",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      );
    } else {
      return Text(
        "RM ${arguments.price.currentPrice}/kg",
        style: Theme.of(context).textTheme.headline2,
      );
    }
  }
}
