import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await context.read<GlobalAuthCubit>().updateGlobalAuthCubit().then((_) {
        final user = context.read<GlobalAuthCubit>().state.farmhubUser;

        if (user == null) {
          Navigator.of(context).pushReplacementNamed('/start');
        } else if (user.uid == 'guest') {
          Navigator.of(context).pushReplacementNamed('/start');
        } else {
          Navigator.of(context).pushReplacementNamed('/nav_main');
        }
      });
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
}
