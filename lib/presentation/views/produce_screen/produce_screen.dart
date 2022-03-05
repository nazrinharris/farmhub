import 'package:farmhub/app_router.dart';
import 'package:farmhub/core/util/dates.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:farmhub/presentation/views/produce_screen/bloc/produce_screen_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'custom_tab.dart' as ct;

import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../shared_widgets/texts.dart';

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

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PrimaryButtonAwareCubit()),
      ],
      child: Builder(
        builder: (context) => BlocProvider(
          create: (_) => ProduceScreenBloc(tabController: tabController),
          child: Builder(
            builder: (context) => Scaffold(
                resizeToAvoidBottomInset: false,
                extendBodyBehindAppBar: true,
                extendBody: true,
                appBar: DefaultAppBar(
                  trailingIcon: const Icon(Icons.arrow_back),
                  trailingOnPressed: () {
                    print('pop!');
                    Navigator.of(context).pop();
                  },
                  leadingIcon: const Icon(Icons.bookmark_add_outlined),
                  leadingOnPressed: () {},
                ),
                body: SafeArea(
                  top: false,
                  child: CustomScrollView(
                    physics: DefaultScrollPhysics,
                    slivers: [
                      CupertinoSliverRefreshControl(
                        onRefresh: () async {},
                      ),
                      SliverProduceHeader(widget.produceArguments.produce),
                      SliverProducePriceChart(tabs, widget.produceArguments.produce),
                    ],
                  ),
                )),
          ),
        ),
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

    context.read<ProduceScreenBloc>().state.props.tabController.addListener(() {
      context.read<ProduceScreenBloc>().add(const ProduceScreenEvent.tabChanged());
    });
  }

  @override
  Widget build(BuildContext context) {
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
                Text("RM ${widget.produce.currentProducePrice["price"].toString()}"),
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

enum LargeChartInterval { oneWeek, twoWeek, oneMonth, twoMonth, sixMonth, oneYear }

class SliverProducePriceChart extends StatefulWidget {
  final List<ct.CustomTab> tabs;
  final Produce produce;

  const SliverProducePriceChart(this.tabs, this.produce, {Key? key}) : super(key: key);

  @override
  State<SliverProducePriceChart> createState() => _SliverProducePriceChartState();
}

class _SliverProducePriceChartState extends State<SliverProducePriceChart> {
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
          controller: context.read<ProduceScreenBloc>().state.props.tabController,
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
      LargePriceChart(widget.produce),
    ]));
  }
}

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
