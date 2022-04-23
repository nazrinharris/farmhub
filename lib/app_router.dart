import 'package:farmhub/presentation/views/add_new_price_screen/add_new_price_screen.dart';
import 'package:farmhub/presentation/views/add_new_price_screen/add_new_price_second_screen.dart';
import 'package:farmhub/presentation/views/add_new_price_screen/add_new_price_third_screen.dart';
import 'package:farmhub/presentation/views/create_produce_screen/create_produce_screen.dart';
import 'package:farmhub/presentation/views/debug/navigate_view.dart';
import 'package:farmhub/presentation/views/debug/playground_screen.dart';
import 'package:farmhub/presentation/views/login_screen/login_screen.dart';
import 'package:farmhub/presentation/views/main_screen/main_screen.dart';
import 'package:farmhub/presentation/views/produce_screen/produce_screen.dart';
import 'package:farmhub/presentation/views/register_screen/register_screen.dart';
import 'package:farmhub/presentation/views/search_screen/search_screen.dart';
import 'package:farmhub/presentation/views/start_screen/start_screen.dart';
import 'package:flutter/cupertino.dart';

import 'features/produce_manager/domain/entities/produce/produce.dart';

class ProduceArguments {
  final Produce produce;

  ProduceArguments(this.produce);
}

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => const NavigateView());
      case '/login':
        return CupertinoPageRoute(builder: (_) => const LoginScreen());
      case '/register':
        return CupertinoPageRoute(builder: (_) => const RegisterScreen());
      case '/start':
        return CupertinoPageRoute(builder: (_) => const StartScreen());
      case '/main':
        return CupertinoPageRoute(builder: (_) => const MainScreen());
      case '/create_produce':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: ((context, animation, secondaryAnimation) => const CreateProduceScreen()),
          transitionsBuilder: createProduceScreenTransitionBuilder,
        );
      case '/produce':
        return CupertinoPageRoute(
            builder: (_) => ProduceScreen(routeSettings.arguments as ProduceArguments));
      case '/add_new_price':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 600),
          pageBuilder: ((context, animation, secondaryAnimation) => const AddNewPriceScreen()),
          transitionsBuilder: createProduceScreenTransitionBuilder,
        );
      case '/add_new_price_second':
        return CupertinoPageRoute(
          builder: (_) => AddNewPriceSecondScreen(routeSettings.arguments as ProduceArguments),
        );
      case '/add_new_price_third':
        return CupertinoPageRoute(
          builder: (_) => AddNewPriceThirdScreen(routeSettings.arguments as ProduceArguments),
        );

      case '/search_screen':
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          pageBuilder: ((context, animation, secondaryAnimation) => const SearchScreen()),
          transitionsBuilder: searchScreenTransitionBuilder,
        );

      //! DEBUG ROUTES
      case '/navigate':
        return CupertinoPageRoute(builder: (_) => const NavigateView());
      case '/playground':
        return CupertinoPageRoute(builder: (_) => const PlaygroundScreen());

      default:
        throw Exception('UnknownRoute called');
    }
  }

  Widget createProduceScreenTransitionBuilder(context, animation, secondaryAnimation, child) {
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

  Widget searchScreenTransitionBuilder(context, animation, secondaryAnimation, child) {
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

    return SlideTransition(
      position: offsetAnimation,
      child: FadeTransition(
        opacity: opacityAnimation,
        child: child,
      ),
    );
  }
}
