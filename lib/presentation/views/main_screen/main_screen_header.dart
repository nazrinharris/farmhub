import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app_router.dart';
import '../../../core/util/dates.dart';
import '../../shared_widgets/texts.dart';
import '../../smart_widgets/custom_search_field.dart';
import 'bloc/main_screen_bloc.dart';

class SliverMainScreenHeader extends StatelessWidget {
  final Animation<double> extent;
  final FocusNode mainScreenFocusNode;
  final bool isAdmin;

  const SliverMainScreenHeader(this.extent, this.mainScreenFocusNode, this.isAdmin, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: MainScreenHeaderDelegate(extent, mainScreenFocusNode, isAdmin),
    );
  }
}

class MainScreenHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Animation<double> extent;
  final FocusNode mainScreenFocusNode;
  final bool isAdmin;

  MainScreenHeaderDelegate(this.extent, this.mainScreenFocusNode, this.isAdmin);

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
              isAdmin: isAdmin,
            ),
            Hero(
              tag: "search_bar",
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: CustomSearchField(
                  isFocus: false,
                  // TODO: Set default right inside of [CustomSearchField] rather than this (onChanged)
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
  final bool isAdmin;

  const MainHeader({
    Key? key,
    required this.mainHeaderController,
    required this.isAdmin,
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
                  if (widget.isAdmin)
                    Text(
                      "Admin",
                      style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
                    ),
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
