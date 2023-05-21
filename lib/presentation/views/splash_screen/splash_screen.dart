import 'package:farmhub/core/app_version/app_version_repository.dart';
import 'package:farmhub/core/auth/data/repository/auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../core/auth/domain/entities/farmhub_config.dart';
import '../../../core/errors/error_messages.dart';
import '../../shared_widgets/toasts.dart';

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
      await context.read<GlobalAuthCubit>().updateGlobalAuthCubit().then((_) async {
        final user = context.read<GlobalAuthCubit>().state.farmhubUser;
        final PackageInfo packageInfo = await PackageInfo.fromPlatform();

        IAppVersionRepository appVersionRepository = locator();

        await appVersionRepository.getFarmhubConfig().then((res) {
          res.fold(
            (f) => showToastWidget(
              ErrorToast(errorMessage: messageForFailure(f)),
              context: context,
              animation: StyledToastAnimation.slideFromTopFade,
              reverseAnimation: StyledToastAnimation.slideToTopFade,
              position: StyledToastPosition.top,
              animDuration: const Duration(milliseconds: 800),
              curve: Curves.easeOutExpo,
              reverseCurve: Curves.easeInExpo,
              duration: const Duration(seconds: 7),
            ),
            (config) {
              FarmhubConfig newConfig = FarmhubConfig(
                minimumAppVersion: config.minimumAppVersion,
                latestAppVersion: config.latestAppVersion,
                localAppVersion: packageInfo.version,
              );

              context.read<GlobalAuthCubit>().setFarmhubConfig(newConfig);
            },
          );
        });

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
