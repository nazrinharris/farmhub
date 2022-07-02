import 'package:bottom_nav_layout/bottom_nav_layout.dart';
import 'package:farmhub/presentation/views/favorites_screen/favorites_screen.dart';
import 'package:farmhub/presentation/views/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavMainScreen extends StatelessWidget {
  const NavMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BottomNavLayout(
        savePageState: true,
        pageTransitionData: _pageTransition(),
        pages: [
          (_) => const MainScreen(),
          (_) => const FavoritesScreen(),
        ],
        bottomNavigationBar: (index, onTap) {
          return Container(
            height: 90,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.10), blurRadius: 10),
                ]),
            padding: EdgeInsets.only(top: 6, left: 14, right: 14, bottom: 14),
            child: GNav(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              padding: const EdgeInsets.symmetric(horizontal: 35),
              tabBorderRadius: 20,
              rippleColor: Theme.of(context).colorScheme.primary.withOpacity(0.35),
              hoverColor: Theme.of(context).colorScheme.primary.withOpacity(0.15),
              activeColor: Theme.of(context).colorScheme.primary,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              duration: const Duration(milliseconds: 350),
              gap: 8,
              tabs: [
                GButton(
                  padding: tabPadding(horizontal: 24),
                  icon: Icons.cottage,
                  iconSize: 26,
                  text: 'Home',
                  textStyle: Theme.of(context).textTheme.bodyText1,
                ),
                GButton(
                  padding: tabPadding(horizontal: 24),
                  iconSize: 22,
                  icon: Icons.bookmarks,
                  text: 'Favorites',
                  textStyle: Theme.of(context).textTheme.bodyText1,
                ),
              ],
              selectedIndex: index,
              onTabChange: onTap,
            ),
          );
        },
      ),
    );
  }

  EdgeInsets tabPadding({double? vertical, double? horizontal}) =>
      EdgeInsets.symmetric(vertical: vertical ?? 12, horizontal: horizontal ?? 16);

  PageTransitionData _pageTransition() {
    return PageTransitionData(
      builder: (controller, child) => AnimatedBuilder(
        animation: Tween(begin: 0.0, end: 1.0).animate(controller),
        builder: (context, child) => Opacity(
          opacity: controller.value,
          child: Transform.scale(
            scale: 1.05 - (controller.value * 0.05),
            child: child,
          ),
        ),
        child: child,
      ),
      duration: 100,
      //direction: AnimationDirection.inAndOut,
    );
  }
}
