import 'dart:math';

import 'package:farmhub/app_router.dart';
import 'package:farmhub/core/util/dates.dart';
import 'package:farmhub/core/util/farmhub_icons.dart';

import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/texts.dart';
import 'package:farmhub/presentation/smart_widgets/custom_search_field.dart';

import 'package:farmhub/presentation/views/main_screen/bloc/main_screen_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../locator.dart';
import '../../shared_widgets/scroll_physics.dart';
import '../../smart_widgets/produce_list_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late AnimationController mainHeaderController;

  late Animation<double> extent;

  late FocusNode mainScreenFocusNode;

  @override
  void initState() {
    super.initState();

    mainScreenFocusNode = FocusNode();
    mainScreenFocusNode.canRequestFocus = false;

    mainHeaderController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 500),
    );

    mainHeaderController.addListener(() {
      setState(() {});
    });

    extent = Tween<double>(begin: 166.0, end: 68.0).animate(mainHeaderController);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
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
              extendBody: true,
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
                    onTap: () {
                      debugPrint("Pressed");
                      Navigator.of(context).pushNamed('/add_new_price');
                    },
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
                      delegate: MainScreenHeaderDelegate(extent, mainScreenFocusNode),
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

  @override
  void dispose() {
    super.dispose();
    mainScreenFocusNode.dispose();
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

          return ProduceListCard(index, produce);
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
  final FocusNode mainScreenFocusNode;

  MainScreenHeaderDelegate(this.extent, this.mainScreenFocusNode);

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
            Hero(
              tag: "search_bar",
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: CustomSearchField(
                  isFocus: false,
                  // TODO: Set default right inside of [CustomSearchField] rather than this
                  onChanged: (value) {},
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/search_screen',
                      arguments: SearchScreenArguments(mainScreenFocusNode),
                    );
                  },
                ),
              ),
            )
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
