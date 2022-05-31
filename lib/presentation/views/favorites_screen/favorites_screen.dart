// ignore_for_file: prefer_const_constructors

import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/custom_cupertino_sliver_refresh_control.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: CustomScrollView(
          physics: DefaultScrollPhysics,
          slivers: [
            CustomCupertinoSliverRefreshControl(
              onRefresh: () async {
                await Future.delayed(Duration(seconds: 2));
              },
            ),
            SliverFavoritesHeader(),
          ],
        ));
  }
}

class SliverFavoritesHeader extends StatelessWidget {
  const SliverFavoritesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      UITopPadding(),
      UICustomVertical(60),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Text(
          "Favorites",
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 38),
        ),
      )
    ]));
  }
}
