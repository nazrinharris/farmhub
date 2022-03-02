import 'dart:math';

import 'package:farmhub/core/util/dates.dart';
import 'package:farmhub/core/util/farmhub_icons.dart';

import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/texts.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/views/main_screen/bloc/main_screen_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../locator.dart';
import '../../shared_widgets/scroll_physics.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late AnimationController mainHeaderController;

  late Animation<double> extent;

  @override
  void initState() {
    super.initState();

    mainHeaderController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 500),
    );

    mainHeaderController.addListener(() {
      setState(() {});
    });

    extent = Tween<double>(begin: 162.0, end: 68.0).animate(mainHeaderController);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProduceManagerBloc(repository: locator()),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => MainScreenBloc(
            mainHeaderController: mainHeaderController,
            produceManagerBloc: context.read<ProduceManagerBloc>(),
          ),
          child: Builder(
            builder: (context) => Scaffold(
              resizeToAvoidBottomInset: false,
              extendBodyBehindAppBar: true,
              floatingActionButton: SpeedDial(
                useRotationAnimation: false,
                overlayColor: Colors.black,
                overlayOpacity: 0.85,
                spacing: 24,
                spaceBetweenChildren: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                backgroundColor: Theme.of(context).colorScheme.primary,
                activeBackgroundColor: Theme.of(context).colorScheme.error,
                icon: Icons.add,
                activeIcon: Icons.close,
                iconTheme: const IconThemeData(color: Colors.white),
                children: [
                  SpeedDialChild(
                    onTap: () => Navigator.of(context).pushNamed('/create_produce'),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    child: const Icon(
                      FarmhubIcons.farmhub_corn_icon,
                      color: Colors.white,
                      size: 20,
                    ),
                    labelWidget: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Create new Produce",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  SpeedDialChild(
                    onTap: () {},
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    child: const Icon(
                      Icons.price_change,
                      color: Colors.white,
                    ),
                    labelWidget: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Add new Price",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              body: SafeArea(
                child: CustomScrollView(
                  physics: DefaultScrollPhysics,
                  slivers: [
                    CupertinoSliverRefreshControl(
                      onRefresh: () async {},
                    ),
                    SliverPersistentHeader(
                      delegate: MainScreenHeaderDelegate(extent),
                    ),
                    //const SliverDebugSlot(),
                    const SliverMainScreenListView(),
                    const SliverWhiteSpace(200)
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class SliverMainScreenListView extends StatefulWidget {
  const SliverMainScreenListView({Key? key}) : super(key: key);

  @override
  State<SliverMainScreenListView> createState() => _SliverMainScreenListViewState();
}

class _SliverMainScreenListViewState extends State<SliverMainScreenListView> {
  @override
  void initState() {
    super.initState();
    context.read<MainScreenBloc>().add(const MainScreenEvent.getFirstTenProduce());

    context.read<MainScreenBloc>().stream.listen((event) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentState = context.read<MainScreenBloc>().state;

    if (currentState is MSSInitial) {
      throw Exception("MSSInitial State is received when it should not have existed.");
    } else if (currentState is MSSPricesLoading) {
      return SliverLoadingIndicator();
    } else if (currentState is MSSPricesCompleted) {
      return SliverProduceList(
        currentState: currentState,
      );
    } else if (currentState is MSSPricesError) {
      return SliverList(
          delegate: SliverChildListDelegate(
        [Text("ERROR!, ${currentState.code}, ${currentState.message}")],
      ));
    }

    return SliverList(
        delegate: SliverChildListDelegate([
      Container(
        child: Text('Uh oh, some weird state is thrown here. In ProduceList!'),
      )
    ]));
  }
}

class SliverLoadingIndicator extends StatelessWidget {
  const SliverLoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            alignment: Alignment.center,
            width: screenWidth,
            height: screenHeight - 400,
            child: const CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}

class SliverProduceList extends StatelessWidget {
  final MSSPricesCompleted currentState;

  const SliverProduceList({Key? key, required this.currentState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderSide borderSide =
        BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24));

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final Produce produce = currentState.produceList[index];

          return ProduceListCard(index, currentState);
        },
        childCount: currentState.produceList.length,
      ),
    );
  }

  BorderSide _resolveTop(BuildContext context, int index, BorderSide borderSide) {
    if (index == 0) {
      return BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24));
    } else {
      return BorderSide.none;
    }
  }
}

class ProduceListCard extends StatelessWidget {
  final int index;
  final MSSPricesCompleted currentState;

  const ProduceListCard(this.index, this.currentState, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderSide borderSide =
        BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24));

    final Produce produce = currentState.produceList[index];

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
          decoration: BoxDecoration(
            border: Border(
              top: _resolveTop(context, index, borderSide),
              bottom: borderSide,
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
                      "RM ${produce.currentProducePrice["price"].toString()}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.w800),
                    ),
                    const UICustomVertical(9),
                    ChangeBox(index),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IgnorePointer(
                      child: PriceChart(
                        currentState: currentState,
                        index: index,
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

  BorderSide _resolveTop(BuildContext context, int index, BorderSide borderSide) {
    if (index == 0) {
      return BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24));
    } else {
      return BorderSide.none;
    }
  }
}

class PriceChart extends StatelessWidget {
  const PriceChart({
    Key? key,
    required this.currentState,
    required this.index,
  }) : super(key: key);

  final MSSPricesCompleted currentState;
  final int index;

  @override
  Widget build(BuildContext context) {
    // Check if there is less than two weeklyPrices
    print("Length: ${currentState.produceList.length}");
    if (currentState.produceList[index].weeklyPrices.length < 2) {
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
      final bool isNegative = resolveIsNegative(context);
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

      return SizedBox(
        height: 90,
        width: 120,
        child: SfCartesianChart(
          plotAreaBorderColor: Colors.transparent,
          primaryXAxis: NumericAxis(
            isInversed: true,
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          series: <CartesianSeries>[
            SplineAreaSeries<num, num>(
              animationDuration: 1000,
              dataSource: currentState.produceList[index].weeklyPrices,
              xValueMapper: (num price, index) => index,
              yValueMapper: (num price, index) => price,
              borderWidth: 3,
              borderColor: borderColor,
              gradient: gradient,
            ),
          ],
        ),
      );
    }
  }

  bool resolveIsNegative(BuildContext context) {
    final currentState = context.read<MainScreenBloc>().state;

    if (currentState is MSSPricesCompleted) {
      final num currentPrice = currentState.produceList[index].currentProducePrice["price"];
      final num previousPrice = currentState.produceList[index].previousProducePrice["price"];
      final num change = currentPrice - previousPrice;

      if (change < 0) {
        return true;
      } else {
        return false;
      }
    } else {
      throw Exception("ChangeBox - ChangeBox is built during incorrect state.");
    }
  }
}

class ChangeBox extends StatelessWidget {
  final int index;

  const ChangeBox(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num? priceChange = resolvePriceChange(context);
    bool? isNegative;

    if (priceChange != null) {
      isNegative = priceChange < 0;
    }

    if (isNegative != null) {
      return Align(
        alignment: Alignment.centerLeft,
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
        alignment: Alignment.centerLeft,
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
    final currentState = context.read<MainScreenBloc>().state;

    if (currentState is MSSPricesCompleted) {
      // Check if previous price is null
      if (currentState.produceList[index].previousProducePrice["price"] == null) {
        return null;
      } else {
        final num currentPrice = currentState.produceList[index].currentProducePrice["price"];
        final num previousPrice = currentState.produceList[index].previousProducePrice["price"];
        final num change = currentPrice - previousPrice;

        return roundDouble(change.toDouble(), 2);
      }
    } else {
      throw Exception("ChangeBox - ChangeBox is built during incorrect state.");
    }
  }

  double roundDouble(double value, int places) {
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
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
      return Theme.of(context).colorScheme.background;
    }
  }
}

class SliverDebugSlot extends StatelessWidget {
  const SliverDebugSlot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(
      [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 200,
            child: PrimaryButton(
              horizontalPadding: 10,
              width: 500,
              content: "Toggle Top Header",
              onPressed: () {
                context.read<MainScreenBloc>().add(const MainScreenEvent.toggleMainHeader());
              },
            ),
          ),
        ),
      ],
    ));
  }
}

class MainScreenHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Animation<double> extent;

  MainScreenHeaderDelegate(this.extent);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).backgroundColor,
                Theme.of(context).backgroundColor.withOpacity(0.0),
              ],
            ),
          ),
        ),
        Column(
          children: [
            MainHeader(
              mainHeaderController: context.read<MainScreenBloc>().mainHeaderController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              child: CupertinoSearchTextField(
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  double get maxExtent => extent.value;

  @override
  double get minExtent => extent.value;
}

class MainHeader extends StatefulWidget {
  final AnimationController mainHeaderController;

  const MainHeader({
    Key? key,
    required this.mainHeaderController,
  }) : super(key: key);

  @override
  State<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends State<MainHeader> {
  late Animation<double> sizeFactor;

  @override
  void initState() {
    super.initState();

    if (context.read<MainScreenBloc>().state.props.isMainHeaderVisible) {
      sizeFactor = Tween<double>(begin: 1.0, end: 0.0).animate(widget.mainHeaderController);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: sizeFactor,
      axis: Axis.vertical,
      axisAlignment: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Headline1('Pasar Selayang'),
                  Headline2(returnCurrentDate()),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 6),
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Theme.of(context).colorScheme.primary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SliverWhiteSpace extends StatelessWidget {
  final double height;

  const SliverWhiteSpace(this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        SizedBox(
          height: height,
        )
      ]),
    );
  }
}
