import 'package:farmhub/presentation/views/debug/navigate_view.dart';
import 'package:farmhub/presentation/views/login_screen/login_screen.dart';
import 'package:farmhub/presentation/views/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => const NavigateView());
      case '/login':
        return CupertinoPageRoute(builder: (_) => const LoginScreen());
      case '/register':
        return CupertinoPageRoute(builder: (_) => const RegisterScreen());
      default:
        throw Exception('UnknownRoute called');
    }
  }
}
