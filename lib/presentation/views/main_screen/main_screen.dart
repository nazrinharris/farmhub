import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/texts.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/views/main_screen/bloc/main_screen_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../../locator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late AnimationController mainHeaderController;

  @override
  void initState() {
    mainHeaderController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 500),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MainScreenProviders(
      mainHeaderController: mainHeaderController,
      child: Builder(
        builder: (context) => BlocBuilder<MainScreenBloc, MainScreenState>(
          builder: (context, state) {
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
                      floating: true,
                      delegate: MainScreenHeaderDelegate(maxExtent: 160, minExtent: 60),
                    ),
                    SliverProduceList(),
                    const SliverWhiteSpace(900),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SliverProduceList extends StatelessWidget {
  const SliverProduceList({Key? key}) : super(key: key);

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
  @override
  final double minExtent;
  @override
  final double maxExtent;

  MainScreenHeaderDelegate({required this.maxExtent, required this.minExtent});

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
          ),
          child: child,
        );
      }),
    );
  }
}
