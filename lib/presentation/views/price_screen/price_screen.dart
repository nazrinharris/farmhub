import 'package:farmhub/app_router.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../features/produce_manager/domain/entities/price/price.dart';

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
          Column(
            children: [
              Text(
                produceName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              const UIVerticalSpace24(),
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
              const UIBorder(margin: EdgeInsets.symmetric(horizontal: 24), opacity: 0.1),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 34),
                child: Text("All Prices", style: Theme.of(context).textTheme.bodyText1),
              ),
              AllPricesList(arguments.price),
            ],
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

class AllPricesList extends StatelessWidget {
  final Price price;

  const AllPricesList(this.price, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: price.allPricesWithDateList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: AllPriceListCard(index, price),
        );
      },
    );
  }
}

class AllPriceListCard extends StatefulWidget {
  final Price price;
  final int index;

  const AllPriceListCard(this.index, this.price, {Key? key}) : super(key: key);

  @override
  State<AllPriceListCard> createState() => _AllPriceListCardState();
}

class _AllPriceListCardState extends State<AllPriceListCard> {
  @override
  void initState() {
    super.initState();

    widget.price.allPricesWithDateList.sort((a, b) {
      DateTime aPriceDate = DateFormat("yyyy-MM-dd hh:mm aaa").parse(a.priceDate);
      DateTime bPriceDate = DateFormat("yyyy-MM-dd hh:mm aaa").parse(b.priceDate);

      return bPriceDate.compareTo(aPriceDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    final dateTimeStamp = DateFormat("yyyy-MM-dd hh:mm aaa").parse(
      widget.price.allPricesWithDateList[widget.index].priceDate,
    );
    final date = DateFormat("dd/MM/yyyy").format(dateTimeStamp);
    final time = DateFormat("hh:mm aaa").format(dateTimeStamp);

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 28),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
          decoration: BoxDecoration(
            border: Border(
              top: _resolveTop(context, widget.index),
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
                      date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        "RM ${widget.price.allPricesWithDateList[widget.index].price.toString()}/kg"),
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
