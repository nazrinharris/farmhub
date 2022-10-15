import 'dart:async';

import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/errors/exceptions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late StreamSubscription subscription;

  @override
  void initState() {
    super.initState();

    subscription = locator<GlobalAuthCubit>().stream.listen((state) {
      if (state is GALoading) {
        // Do nothing, GlobalAuthCubit is updating
      } else if (state is GAComplete) {
        if (state.farmhubUser != null) {
          print(state.farmhubUser);
          Navigator.of(context).pushReplacementNamed("/nav_main");
        } else {
          Navigator.of(context).pushReplacementNamed('/start');
        }
      } else if (state is GANotLoggedIn) {
        Navigator.of(context).pushReplacementNamed('/start');
      } else {
        throw UnexpectedException(
          code: "UNEXPECTEDSTATE",
          message: "Unexpected state was thrown",
          stackTrace: StackTrace.current,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    context.read<GlobalUICubit>().setSafeAreaPadding(context);

    return const Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }
}
