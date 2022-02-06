import 'package:farmhub/app_router.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:farmhub/presentation/views/debug/navigate_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/auth/auth_bloc/auth_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  await Firebase.initializeApp();

  await setupLocator();

  runApp(
    FarmhubApp(
      appRouter: AppRouter(),
    ),
  );
}

class FarmhubApp extends StatelessWidget {
  const FarmhubApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator<AuthBloc>()),
      ],
      child: MaterialApp(
        title: "Farmhub",
        theme: FarmhubTheme.appThemeData[FarmhubThemeVariants.light],
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}

class TestStart extends StatelessWidget {
  const TestStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
