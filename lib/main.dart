import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/app_router.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:farmhub/presentation/views/debug/navigate_view.dart';
import 'package:farmhub/presentation/views/start_screen/start_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io';

import 'core/auth/auth_bloc/auth_bloc.dart';

const bool USE_EMULATOR = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  setupLocator();

  runApp(
    FarmhubApp(
      appRouter: AppRouter(),
    ),
  );

  // Comment for initial commit
  // Comment for another initial commit
  // Comment for even more commits
  // Comment for offline capability
  // Comment for enhancements and touch ups
  // Comment for farm and account types
  // Comment for phone sign-in backend
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
        BlocProvider(create: (context) => locator<GlobalAuthCubit>()),
        BlocProvider(create: (context) => locator<GlobalUICubit>()),
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
  late String initialRoute;

  @override
  void initState() {
    super.initState();

    locator<GlobalAuthCubit>().updateGlobalAuthCubit();

    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        systemStatusBarContrastEnforced: false,
      ));
    } else if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        // systemNavigationBarColor: FarmhubTheme.appThemeData[FarmhubThemeVariants.light]!
        //     .extension<ExtendedColors>()!
        //     .onBackgroundPale,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemStatusBarContrastEnforced: false,
      ));
    }

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      if (USE_EMULATOR) {
        await _connectToEmulator();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Farmhub",
      theme: FarmhubTheme.appThemeData[FarmhubThemeVariants.light],
      onGenerateRoute: widget.appRouter.onGenerateRoute,
      //home: NavigateView(),
    );
  }
}

Future<void> _connectToEmulator() async {
  String host = Platform.isAndroid ? "10.0.2.2" : 'localhost';

  FirebaseFirestore.instance.settings = Settings(
    host: '$host:8080',
    sslEnabled: false,
    persistenceEnabled: false,
  );

  await FirebaseAuth.instance.useAuthEmulator(host, 9099);
  FirebaseFirestore.instance.useFirestoreEmulator(host, 8080);
}
