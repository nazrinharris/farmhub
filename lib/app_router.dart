import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:farmhub/presentation/views/add_new_price_screen/add_new_price_screen.dart';
import 'package:farmhub/presentation/views/add_new_price_screen/add_new_price_search_screen.dart';
import 'package:farmhub/presentation/views/add_new_price_screen/add_new_price_second_screen.dart';
import 'package:farmhub/presentation/views/add_new_price_screen/add_new_price_third_screen.dart';
import 'package:farmhub/presentation/views/all_farm_screens/create_farm_screen.dart';
import 'package:farmhub/presentation/views/all_farm_screens/edit_farm_screen.dart';
import 'package:farmhub/presentation/views/all_shop_screens/create_shop_screen.dart';
import 'package:farmhub/presentation/views/all_shop_screens/edit_shop_screen.dart';
import 'package:farmhub/presentation/views/create_produce_screen/create_produce_screen.dart';
import 'package:farmhub/presentation/views/debug/navigate_view.dart';
import 'package:farmhub/presentation/views/debug/playground_screen.dart';
import 'package:farmhub/presentation/views/debug/playground_two_screen.dart';
import 'package:farmhub/presentation/views/edit_profile_screen/edit_profile_screen.dart';
import 'package:farmhub/presentation/views/favorites_screen/favorites_screen.dart';
import 'package:farmhub/presentation/views/login_screen/login_screen.dart';
import 'package:farmhub/presentation/views/main_screen/main_screen.dart';
import 'package:farmhub/presentation/views/nav_main_screen/nav_main_screen.dart';
import 'package:farmhub/presentation/views/price_screen/price_screen.dart';
import 'package:farmhub/presentation/views/produce_screen/produce_screen.dart';
import 'package:farmhub/presentation/views/profile_screen/profile_screen.dart';
import 'package:farmhub/presentation/views/register_screen/register_screen.dart';
import 'package:farmhub/presentation/views/search_screen/search_screen.dart';
import 'package:farmhub/presentation/views/settings_screen/setting_screens.dart';
import 'package:farmhub/presentation/views/splash_screen/splash_screen.dart';
import 'package:farmhub/presentation/views/start_screen/start_screen.dart';
import 'package:farmhub/presentation/views/user_management_screens/choose_user_type_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'features/produce_manager/domain/entities/produce/produce.dart';
import 'locator.dart';

class ProduceArguments {
  final Produce produce;

  ProduceArguments(this.produce);
}

enum AddNewPriceFromRoute {
  fromAddNewPriceScreen,
  fromAddNewPriceSearchScreen,
  fromMainBottomSheet,
  fromProduceScreen
}

class AddNewPriceScreenArguments {
  final Produce produce;
  final AddNewPriceFromRoute fromRoute;

  AddNewPriceScreenArguments(this.produce, this.fromRoute);
}

class PriceScreenArguments {
  final Produce produce;
  final Price price;

  PriceScreenArguments(this.produce, this.price);
}

class SearchScreenArguments {
  final FocusNode mainScreenFocusNode;

  SearchScreenArguments(this.mainScreenFocusNode);
}

class ProfileScreenArguments {
  final FarmhubUser user;

  ProfileScreenArguments(this.user);
}

class AppRouter {
  static const add_new_price_second = "/add_new_price_second";

  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => const SplashScreen());
      case '/login':
        return CupertinoPageRoute(builder: (_) => const LoginScreen());
      case '/register':
        return CupertinoPageRoute(builder: (_) => const RegisterScreen());
      case '/choose_user_type':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: ((context, animation, secondaryAnimation) => const ChooseUserTypeScreen()),
          transitionsBuilder: slideUpTransitionBuilder,
        );
      case '/start':
        return MaterialPageRoute(builder: (_) => const StartScreen());
      case '/nav_main':
        return MaterialPageRoute(builder: (_) => const NavMainScreen());
      case '/create_produce':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: ((context, animation, secondaryAnimation) => const CreateProduceScreen()),
          transitionsBuilder: slideUpTransitionBuilder,
        );
      case '/produce':
        return CupertinoPageRoute(
            builder: (_) =>
                ProduceScreen(produceArguments: routeSettings.arguments as ProduceArguments));
      case '/price':
        return CupertinoPageRoute(
            builder: (_) => PriceScreen(routeSettings.arguments as PriceScreenArguments));
      case '/add_new_price':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: ((context, animation, secondaryAnimation) => const AddNewPriceScreen()),
          transitionsBuilder: slideUpTransitionBuilder,
        );

      case add_new_price_second:
        return CupertinoPageRoute(
          builder: (_) =>
              AddNewPriceSecondScreen(routeSettings.arguments as AddNewPriceScreenArguments),
        );
      case '/add_new_price_third':
        return CupertinoPageRoute(
          builder: (_) =>
              AddNewPriceThirdScreen(routeSettings.arguments as AddNewPriceScreenArguments),
        );

      case '/search_screen':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          reverseTransitionDuration: const Duration(milliseconds: 300),
          pageBuilder: ((context, animation, secondaryAnimation) =>
              SearchScreen(routeSettings.arguments as SearchScreenArguments)),
          transitionsBuilder: fadeInTransitionBuilder,
        );
      case '/add_new_price_search_screen':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          reverseTransitionDuration: const Duration(milliseconds: 300),
          pageBuilder: ((context, animation, secondaryAnimation) =>
              AddNewPriceSearchScreen(routeSettings.arguments as SearchScreenArguments)),
          transitionsBuilder: fadeInTransitionBuilder,
        );

      case '/create_farm':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: ((context, animation, secondaryAnimation) => const CreateFarmScreen()),
          transitionsBuilder: slideUpTransitionBuilder,
        );
      case '/edit_farm':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: ((context, animation, secondaryAnimation) =>
              EditFarmScreen(routeSettings.arguments as Farm)),
          transitionsBuilder: slideUpTransitionBuilder,
        );

      case '/create_shop':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: ((context, animation, secondaryAnimation) => const CreateShopScreen()),
          transitionsBuilder: slideUpTransitionBuilder,
        );
      case '/edit_shop':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: ((context, animation, secondaryAnimation) =>
              EditShopScreen(routeSettings.arguments as Shop)),
          transitionsBuilder: slideUpTransitionBuilder,
        );

      case '/profile':
        return CupertinoPageRoute(builder: (_) => const ProfileScreen());

      case '/edit_profile':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: ((context, animation, secondaryAnimation) => const EditProfileScreen()),
          transitionsBuilder: slideUpTransitionBuilder,
        );

      case '/favorites':
        return CupertinoPageRoute(builder: (_) => const FavoritesScreen());
      case '/settings':
        return CupertinoPageRoute(builder: (_) => const SettingsScreen());

      //! DEBUG ROUTES
      case '/navigate':
        return CupertinoPageRoute(builder: (_) => const NavigateView());
      case '/playground':
        return CupertinoPageRoute(builder: (_) => PlaygroundScreen(authLocalDataSource: locator()));
      case '/playground_two':
        return CupertinoPageRoute(builder: (_) => const PlaygroundTwoScreen());

      default:
        throw Exception('UnknownRoute called');
    }
  }
}

Route profileRoute = CupertinoPageRoute(builder: (_) => const ProfileScreen());
Route navMainRoute = CupertinoPageRoute(builder: (_) => const NavMainScreen());
Route navigateDebugRoute = CupertinoPageRoute(builder: (_) => const NavigateView());
Route loginRoute = CupertinoPageRoute(builder: (_) => const LoginScreen());
Route registerRoute = CupertinoPageRoute(builder: (_) => const RegisterScreen());
Route startRoute = CupertinoPageRoute(builder: (_) => const StartScreen());

Route returnProduceRoute(ProduceArguments arguments) {
  return CupertinoPageRoute(
    builder: (_) => ProduceScreen(
      produceArguments: arguments,
    ),
  );
}

Route createProduceRoute = PageRouteBuilder(
  transitionDuration: const Duration(milliseconds: 600),
  reverseTransitionDuration: const Duration(milliseconds: 600),
  pageBuilder: ((context, animation, secondaryAnimation) => const CreateProduceScreen()),
  transitionsBuilder: slideUpTransitionBuilder,
);
Route addNewPriceRoute = PageRouteBuilder(
  transitionDuration: const Duration(milliseconds: 600),
  reverseTransitionDuration: const Duration(milliseconds: 600),
  pageBuilder: ((context, animation, secondaryAnimation) => const AddNewPriceScreen()),
  transitionsBuilder: slideUpTransitionBuilder,
);
Route editProfileRoute = PageRouteBuilder(
  transitionDuration: const Duration(milliseconds: 600),
  reverseTransitionDuration: const Duration(milliseconds: 600),
  pageBuilder: ((context, animation, secondaryAnimation) => const EditProfileScreen()),
  transitionsBuilder: slideUpTransitionBuilder,
);

Route favoritesRoute = CupertinoPageRoute(builder: (_) => const FavoritesScreen());
Route settingsRoute = CupertinoPageRoute(builder: (_) => const SettingsScreen());
Route playgroundRoute = CupertinoPageRoute(
    builder: (_) => PlaygroundScreen(
          authLocalDataSource: locator(),
        ));
Route playgroundTwoRoute = CupertinoPageRoute(builder: (_) => const PlaygroundTwoScreen());

Widget slideUpTransitionBuilder(context, animation, secondaryAnimation, child) {
  var offsetCurve =
      animation.status == AnimationStatus.reverse ? Curves.easeInExpo : Curves.easeOutExpo;

  var opacityCurve =
      animation.status == AnimationStatus.reverse ? Curves.easeOutQuad : Curves.easeOutExpo;

  final offsetAnimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
      .chain(CurveTween(
        curve: offsetCurve,
      ))
      .animate(animation);

  final opacityAnimation =
      Tween<double>(begin: 0, end: 1).chain(CurveTween(curve: opacityCurve)).animate(animation);

  return SlideTransition(
    position: offsetAnimation,
    child: FadeTransition(
      opacity: opacityAnimation,
      child: child,
    ),
  );
}

Widget fadeInTransitionBuilder(context, animation, secondaryAnimation, child) {
  var offsetCurve =
      animation.status == AnimationStatus.reverse ? Curves.easeInExpo : Curves.easeOutExpo;

  var opacityCurve =
      animation.status == AnimationStatus.reverse ? Curves.easeOutQuad : Curves.easeOutExpo;

  final offsetAnimation = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
      .chain(CurveTween(
        curve: offsetCurve,
      ))
      .animate(animation);

  final opacityAnimation =
      Tween<double>(begin: 0, end: 1).chain(CurveTween(curve: opacityCurve)).animate(animation);

  return FadeTransition(
    opacity: opacityAnimation,
    child: child,
  );
}
