import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/texts.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/views/main_screen/bloc/main_screen_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:simple_animations/simple_animations.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreenProviders(
      child: Builder(
        builder: (context) => Scaffold(
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
                  delegate:
                      MainScreenHeaderDelegate(maxExtent: 160, minExtent: 160),
                ),
                const SliverWhiteSpace(900),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProducePriceSliverBuilder extends StatefulWidget {
  const ProducePriceSliverBuilder({Key? key}) : super(key: key);

  @override
  State<ProducePriceSliverBuilder> createState() =>
      _ProducePriceSliverBuilderState();
}

class _ProducePriceSliverBuilderState extends State<ProducePriceSliverBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MainScreenHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  final double minExtent;
  @override
  final double maxExtent;

  MainScreenHeaderDelegate({required this.maxExtent, required this.minExtent});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
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
            const TopHeader(),
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

class Dummy extends StatelessWidget {
  const Dummy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
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

class TopHeader extends StatefulWidget {
  const TopHeader({Key? key}) : super(key: key);

  @override
  State<TopHeader> createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> with AnimationMixin {
  late AnimationController _heightFactorController;

  late Animation<double> _opacity;
  late Animation<double> _heightFactor;

  @override
  void initState() {
    super.initState();

    _heightFactorController = createController();
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

class MainScreenProviders extends StatelessWidget {
  final Widget child;

  const MainScreenProviders({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => MainScreenBloc())],
        child: child);
  }
}
