import 'package:farmhub/app_router.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/auth/auth_bloc/auth_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  setupLocator();

  runApp(
    FarmhubApp(
      appRouter: AppRouter(),
    ),
  );

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
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
        BlocProvider(create: (context) => locator<GlobalAuthCubit>())
      ],
      child: FarmhubMaterialApp(appRouter: appRouter),
    );
  }
}

class FarmhubMaterialApp extends StatefulWidget {
  const FarmhubMaterialApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  final AppRouter appRouter;

  @override
  State<FarmhubMaterialApp> createState() => _FarmhubMaterialAppState();
}

class _FarmhubMaterialAppState extends State<FarmhubMaterialApp> {
  @override
  void initState() {
    super.initState();

    context.read<GlobalAuthCubit>().updateGlobalAuthCubit();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Farmhub",
      theme: FarmhubTheme.appThemeData[FarmhubThemeVariants.light],
      onGenerateRoute: widget.appRouter.onGenerateRoute,
    );
  }
}
