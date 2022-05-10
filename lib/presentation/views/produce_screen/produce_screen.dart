import 'package:farmhub/app_router.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/util/dates.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:farmhub/presentation/views/main_screen/main_screen.dart';
import 'package:farmhub/presentation/views/produce_screen/produce_aggregate_cubit/produce_aggregate_cubit.dart';
import 'package:farmhub/presentation/views/produce_screen/produce_prices_cubit/produce_prices_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import '../../../core/util/misc.dart';
import '../../../features/produce_manager/domain/entities/price/price.dart';

import '../../smart_widgets/custom_cupertino_sliver_refresh_control.dart';
import 'custom_tab.dart' as ct;

import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../shared_widgets/texts.dart';
import '../../smart_widgets/large_price_chart.dart';

class ProduceScreen extends StatefulWidget {
  final ProduceArguments produceArguments;

  const ProduceScreen(this.produceArguments, {Key? key}) : super(key: key);

  @override
  State<ProduceScreen> createState() => _ProduceScreenState();
}

class _ProduceScreenState extends State<ProduceScreen> with SingleTickerProviderStateMixin {
  final List<ct.CustomTab> tabs = <ct.CustomTab>[
    const ct.CustomTab(text: '1W'),
    const ct.CustomTab(text: '2W'),
    const ct.CustomTab(text: '1M'),
    const ct.CustomTab(text: '2M'),
    const ct.CustomTab(text: '6M'),
    const ct.CustomTab(text: '1Y'),
  ];
  late TabController tabController;
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    tabController = TabController(length: tabs.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PrimaryButtonAwareCubit()),
        BlocProvider(
            create: (_) => ProduceAggregateCubit(
                  tabController: tabController,
                  repository: locator(),
                )),
        BlocProvider(create: (_) => ProducePricesCubit(repository: locator()))
      ],
      child: Builder(
        builder: (context) => Scaffold(
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            extendBody: true,
            appBar: DefaultAppBar(
              trailingIcon: const Icon(Icons.arrow_back),
              trailingOnPressed: () {
                Navigator.of(context).pop();
              },
              leadingIcon: const Icon(Icons.bookmark_add_outlined),
              leadingOnPressed: () {},
            ),
            body: CustomScrollView(
              controller: scrollController,
              physics: DefaultScrollPhysics,
              slivers: [
                CustomCupertinoSliverRefreshControl(
                  onRefresh: () async {
                    print("Refreshed");
                    await Future.delayed(Duration(seconds: 2));
                  },
                ),
                SliverProduceHeader(widget.produceArguments.produce),
                SliverProducePriceChart(tabs, widget.produceArguments.produce),
                SliverPricesListHeader(scrollController, widget.produceArguments.produce),
                BlocBuilder<ProducePricesCubit, ProducePricesState>(
                  builder: (context, state) {
                    return SliverPricesListSwitcher(widget.produceArguments.produce);
                  },
                ),
              ],
            )),
      ),
    );
  }
}

class SliverProduceHeader extends StatefulWidget {
  final Produce produce;

  const SliverProduceHeader(
    this.produce, {
    Key? key,
  }) : super(key: key);

  @override
  State<SliverProduceHeader> createState() => _SliverProduceHeaderState();
}

class _SliverProduceHeaderState extends State<SliverProduceHeader> {
  @override
  void initState() {
    super.initState();

    context.read<ProduceAggregateCubit>().state.props.tabController.addListener(() {
      context.read<ProduceAggregateCubit>().tabChanged();
    });
  }

  @override
  Widget build(BuildContext context) {
    num currentProducePrice = widget.produce.currentProducePrice["price"];
    currentProducePrice = roundDouble(currentProducePrice.toDouble(), 2);

    return SliverList(
        delegate: SliverChildListDelegate([
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UITopPadding(),
            Headline1(widget.produce.produceName),
            Headline2(returnCurrentDate()),
            const UIVerticalSpace14(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("RM $currentProducePrice/kg"),
                const UIHorizontalSpace14(),
                ChangeBox(widget.produce),
              ],
            ),
            const UIVerticalSpace30(),
          ],
        ),
      ),
    ]));
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class SliverProducePriceChart extends StatefulWidget {
  final List<ct.CustomTab> tabs;
  final Produce produce;

  const SliverProducePriceChart(this.tabs, this.produce, {Key? key}) : super(key: key);

  @override
  State<SliverProducePriceChart> createState() => _SliverProducePriceChartState();
}

class _SliverProducePriceChartState extends State<SliverProducePriceChart> {
  @override
  void initState() {
    super.initState();

    context.read<ProduceAggregateCubit>().getAggregatePrices(widget.produce.produceId);
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.08),
            borderRadius: BorderRadius.circular(16)),
        child: ct.TabBar(
          controller: context.read<ProduceAggregateCubit>().state.props.tabController,
          tabs: widget.tabs,
          labelColor: Theme.of(context).colorScheme.primary,
          indicatorSize: ct.TabBarIndicatorSize.tab,
          indicator: RectangularIndicator(
            color: Theme.of(context).colorScheme.secondary,
            verticalPadding: 4,
            horizontalPadding: 4,
            bottomLeftRadius: 12,
            bottomRightRadius: 12,
            topLeftRadius: 12,
            topRightRadius: 12,
            paintingStyle: PaintingStyle.fill,
          ),
        ),
      ),
      const UIVerticalSpace14(),
      BlocBuilder<ProduceAggregateCubit, ProduceAggregateState>(
        builder: (context, state) {
          if (state is PASInitial) {
            return const SizedBox.shrink();
          } else if (state is PASLoading) {
            return Container(
              height: 250,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            );
          } else if (state is PASCompleted) {
            return LargePriceChart(
              widget.produce,
              determineChartType(state.props.index),
              twoWeeksPricesList: state.props.twoWeeksPricesList,
              oneMonthPricesList: state.props.oneMonthPricesList,
              twoMonthPricesList: state.props.twoMonthPricesList,
              sixMonthPricesList: state.props.sixMonthPricesList,
              oneYearPricesList: state.props.oneYearPricesList,
            );
          } else if (state is PASError) {
            return Container(
              height: 250,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Uh oh, something went wrong.",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const UIVerticalSpace6(),
                  Text(
                    "${state.failure.message}",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          } else {
            return Container(
              height: 250,
              alignment: Alignment.center,
              child: Text(
                "Unexpected state was thrown",
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            );
          }
        },
      ),
    ]));
  }
}

class SliverPricesListHeader extends StatefulWidget {
  final Produce produce;
  final ScrollController scrollController;

  SliverPricesListHeader(this.scrollController, this.produce, {Key? key}) : super(key: key);

  @override
  State<SliverPricesListHeader> createState() => _SliverPricesListHeaderState();
}

class _SliverPricesListHeaderState extends State<SliverPricesListHeader> {
  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      if (widget.scrollController.offset >= widget.scrollController.position.maxScrollExtent &&
          !widget.scrollController.position.outOfRange) {
        context.read<ProducePricesCubit>().getNextTenPrices(widget.produce.produceId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 24),
            alignment: Alignment.centerLeft,
            child: Text(
              "Price History",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}

class SliverPricesListSwitcher extends StatefulWidget {
  final Produce produce;

  SliverPricesListSwitcher(this.produce, {Key? key}) : super(key: key);

  @override
  State<SliverPricesListSwitcher> createState() => _SliverPricesListSwitcherState();
}

class _SliverPricesListSwitcherState extends State<SliverPricesListSwitcher> {
  @override
  void initState() {
    super.initState();

    context.read<ProducePricesCubit>().getFirstTenPrices(widget.produce.produceId);
  }

  @override
  Widget build(BuildContext context) {
    final currentState = context.read<ProducePricesCubit>().state;

    if (currentState is PPSInitial) {
      throw Exception("PSSInitial state is received when it should not have existed.");
    } else if (currentState is PPSFirstTenPricesLoading) {
      return const SliverLoadingIndicator();
    } else if (currentState is PPSNextTenPricesLoading) {
      return SliverPricesList(
        currentState.pricesList,
        isError: false,
        isLoading: true,
        produce: widget.produce,
      );
    } else if (currentState is PPSFirstTenPricesCompleted) {
      return SliverPricesList(
        currentState.pricesList,
        isError: false,
        isLoading: false,
        produce: widget.produce,
      );
    } else if (currentState is PPSNextTenPricesCompleted) {
      return SliverPricesList(
        currentState.pricesList,
        isLoading: false,
        isError: false,
        produce: widget.produce,
      );
    } else if (currentState is PPSPricesError) {
      return SliverPricesList(
        currentState.pricesList,
        isLoading: false,
        isError: true,
        failure: currentState.failure,
        produce: widget.produce,
      );
    } else {
      throw UnexpectedException(
        code: "$currentState",
        message: "Unexpected state is emitted",
        stackTrace: StackTrace.current,
      );
    }
  }
}

class SliverPricesList extends StatelessWidget {
  final List<Price> pricesList;
  final bool isLoading;
  final bool isError;
  final Produce produce;
  Failure? failure;

  SliverPricesList(
    this.pricesList, {
    Key? key,
    required this.isLoading,
    required this.isError,
    required this.produce,
    this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        if (index == pricesList.length) {
          return resolveBottomCard(context, isLoading, isError);
        } else {
          return PriceListCard(index, pricesList[index], produce);
        }
      }, childCount: pricesList.length + 1),
    );
  }

  Widget resolveBottomCard(BuildContext context, bool isLoading, bool isError) {
    if (isLoading) {
      return Container(
        height: 100,
        alignment: Alignment.center,
        child: const CircularProgressIndicator(),
      );
    } else if (isError) {
      print(failure);

      return Container(
        height: 100,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Uh oh, something went wrong.",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.red),
            ),
            const UIVerticalSpace14(),
            Text(
              "Scroll to retry",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      );
    } else if (isLoading && isError) {
      throw Exception("In SliverPricesList, [isLoading] and [isError] cannot both be true");
    } else {
      return Container(
        height: 100,
      );
    }
  }
}

class PriceListCard extends StatelessWidget {
  final Price price;
  final int index;
  final Produce produce;

  const PriceListCard(this.index, this.price, this.produce, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed('/price', arguments: PriceScreenArguments(produce, price));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
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
                      price.priceDate.replaceAll(RegExp("-"), "/"),
                      maxLines: 3,
                      overflow: TextOverflow.fade,
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
                    resolveIsAverage(context, price),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget resolveIsAverage(BuildContext context, Price price) {
    if (price.isAverage) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("(avg.)", style: Theme.of(context).textTheme.caption),
          const UIHorizontalSpace6(),
          Text("RM ${price.currentPrice.toString()}/kg"),
        ],
      );
    } else {
      return Text("RM ${price.currentPrice.toString()}/kg");
    }
  }

  BorderSide _resolveTop(BuildContext context, int index) {
    if (index == 0) {
      return BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24));
    } else {
      return BorderSide.none;
    }
  }
}
