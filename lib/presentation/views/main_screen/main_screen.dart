import 'package:boxy/slivers.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/texts.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/views/main_screen/bloc/main_screen_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../locator.dart';

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

    extent = Tween<double>(begin: 160.0, end: 64.0).animate(mainHeaderController);
  }

  @override
  Widget build(BuildContext context) {
    return MainScreenProviders(
      mainHeaderController: mainHeaderController,
      child: Builder(builder: (context) {
        return BlocBuilder<MainScreenBloc, MainScreenState>(
          builder: (context, state) {
            return MainScreenCore(extent: extent);
          },
        );
      }),
    );
  }
}

class MainScreenCore extends StatefulWidget {
  const MainScreenCore({
    Key? key,
    required this.extent,
  }) : super(key: key);

  final Animation<double> extent;

  @override
  State<MainScreenCore> createState() => _MainScreenCoreState();
}

class _MainScreenCoreState extends State<MainScreenCore> {
  @override
  void initState() {
    super.initState();

    context.read<MainScreenBloc>().add(const MainScreenEvent.getFirstTenProduce());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          physics: DefaultScrollPhysics,
          slivers: [
            CupertinoSliverRefreshControl(
              onRefresh: () async {},
            ),
            SliverPersistentHeader(
              delegate: MainScreenHeaderDelegate(widget.extent),
            ),
            const SliverDebugSlot(),
            const SliverAnimatedSwitcher(
              child: ProducePriceList(),
              duration: Duration(milliseconds: 500),
            )
          ],
        ),
      ),
    );
  }
}

class ProducePriceList extends StatefulWidget {
  const ProducePriceList({Key? key}) : super(key: key);

  @override
  State<ProducePriceList> createState() => _ProducePriceListState();
}

class _ProducePriceListState extends State<ProducePriceList> {
  @override
  void initState() {
    super.initState();
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
      return SliverList(delegate: SliverChildListDelegate([const CircularProgressIndicator()]));
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

class SliverProduceList extends StatelessWidget {
  final MSSPricesCompleted currentState;

  const SliverProduceList({Key? key, required this.currentState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final Produce produce = currentState.produceList[index];

          return Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 109,
                padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 13),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(),
                    bottom: BorderSide(),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          produce.produceName,
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17),
                        ),
                        Text(
                          "RM ${produce.currentProducePrice["price"].toString()}",
                          style: Theme.of(context).textTheme.bodyText2,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          color: Colors.red,
                          height: 50,
                          width: 50,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        childCount: currentState.produceList.length,
      ),
    );
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
                  const Headline2('7 November'),
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

class TopHeader extends StatefulWidget {
  const TopHeader({Key? key}) : super(key: key);

  @override
  State<TopHeader> createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> with SingleTickerProviderStateMixin {
  late AnimationController _heightFactorController;

  late Animation<double> _opacity;
  late Animation<double> _heightFactor;

  @override
  void initState() {
    super.initState();

    _heightFactorController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _heightFactor = CurvedAnimation(
      parent: _heightFactorController,
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.fastOutSlowIn.flipped,
    );
    _opacity = Tween<double>(begin: 0, end: 1).animate(_heightFactor);
  }

  void hideHeader() {}

  void showHeader() {}

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _heightFactorController.view,
      builder: (context, child) {
        return ClipRect(
          child: Align(
            heightFactor: _heightFactor.value,
            child: Opacity(
              opacity: _opacity.value,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Align(
                  alignment: Alignment.center,
                  child: child,
                ),
              ),
            ),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Headline1('Pasar Selayang'),
              const Headline2('7 November'),
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

class MainScreenProviders extends StatelessWidget {
  final Widget child;
  final AnimationController mainHeaderController;

  const MainScreenProviders({
    Key? key,
    required this.child,
    required this.mainHeaderController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProduceManagerBloc(repository: locator())),
      ],
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => MainScreenBloc(
            mainHeaderController: mainHeaderController,
            produceManagerBloc: context.read<ProduceManagerBloc>(),
            produceManagerRepository: locator(),
          ),
          child: child,
        );
      }),
    );
  }
}
