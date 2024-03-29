// ignore_for_file: deprecated_member_use

import 'package:farmhub/core/app_version/app_version_local_datasource.dart';
import 'package:farmhub/core/auth/auth_cubit/auth_cubit.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/produce_dialog_cubit/produce_dialog_cubit.dart';
import 'package:farmhub/presentation/views/settings_screen/cubit/settings_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ndialog/ndialog.dart';

import '../../../app_router.dart';
import '../../../core/app_version/app_version_helper.dart';
import '../../../core/auth/domain/entities/farmhub_config.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => SettingsCubit(
                authRepository: locator(),
                appVersionRemoteDatasource: locator(),
                authCubit: AuthCubit(
                  firebaseAuth: locator(),
                  authRepository: locator(),
                  authRemoteDataSource: locator(),
                  globalAuthCubit: locator(),
                  appVersionRepository: locator(),
                ))),
        BlocProvider(
            create: (context) => ProduceDialogCubit(
                  locator(),
                  locator(),
                  locator(),
                  authRepository: locator(),
                )),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: DefaultAppBar(
            title: "Settings",
            leadingIcon: const Icon(Icons.arrow_back),
            leadingOnPressed: () {
              Navigator.of(context).pop();
            },
            trailingIcon: const Icon(Icons.error, color: Colors.transparent),
          ),
          body: const CustomScrollView(
            physics: DefaultScrollPhysics,
            slivers: [
              SliverSettingsBody(),
            ],
          ),
        );
      }),
    );
  }
}

class SliverSettingsBody extends StatefulWidget {
  const SliverSettingsBody({Key? key}) : super(key: key);

  @override
  State<SliverSettingsBody> createState() => _SliverSettingsBodyState();
}

class _SliverSettingsBodyState extends State<SliverSettingsBody> {
  @override
  void initState() {
    super.initState();

    context.read<SettingsCubit>().retrieveAppVersion();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Column(
              children: [
                const SettingsHeader("Account"),
                SettingsListCard(
                  content: "Change Password",
                  icon: const Icon(Icons.password_outlined),
                  isTop: true,
                  onTap: () {
                    context.read<SettingsCubit>().showResetPasswordDialog(context,
                        resetPasswordDialog: returnResetPasswordConfirmation(
                          context,
                          farmhubUser: context.read<GlobalAuthCubit>().state.farmhubUser,
                        ));
                  },
                ),
                SettingsListCard(
                  content: "Sign out",
                  icon: const Icon(Icons.logout_outlined),
                  onTap: () {
                    final dialog = returnSignOutConfirmationDialog(context, () {
                      context.read<SettingsCubit>().signOut(context);
                    });

                    dialog.show(context, transitionType: DialogTransitionType.Bubble);
                  },
                ),
                const SettingsHeader("Others"),
                SettingsListCard(
                  content: "Terms and Conditions",
                  icon: const Icon(Icons.policy_outlined),
                  isTop: true,
                ),
                SettingsListCard(
                  content: "About Farmhub",
                  icon: const Icon(Icons.eco_outlined),
                ),
                if (kDebugMode) const DebugSettingsList(),
                const UIVerticalSpace30(),
                BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, state) {
                    return Text(
                      "Farmhub Version ${context.read<SettingsCubit>().state.appVersion}",
                      style: Theme.of(context).textTheme.caption,
                    );
                  },
                ),
                const UICustomVertical(100),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DebugSettingsList extends StatelessWidget {
  const DebugSettingsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SettingsHeader("Debug"),
        SettingsListCard(
          content: "Go to Navigation",
          icon: const Icon(Icons.tab_unselected),
          isTop: true,
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pop();
            Navigator.of(context).pop();
            Navigator.pushNamed(context, "/navigate");
          },
        ),
        SettingsListCard(
          content: "Navigate to Main",
          icon: const Icon(Icons.exit_to_app),
          onTap: () {
            Navigator.of(context).popUntil((route) => route == navMainRoute);
          },
        ),
        SettingsListCard(
          content: "Navigate to Playground",
          icon: const Icon(Icons.slideshow),
          onTap: () {
            Navigator.pushNamed(context, "/playground");
          },
        ),
        SettingsListCard(
          content: "Debug Print App Meta",
          icon: const Icon(Icons.display_settings),
          onTap: () {
            context.read<SettingsCubit>().debugPrintMeta();
          },
        ),
        SettingsListCard(
          content: "Refresh App Version Meta",
          icon: const Icon(Icons.update),
          onTap: () {
            context.read<SettingsCubit>().updateAppVersion();
          },
        ),
        SettingsListCard(
          content: "Print Semantic to Integer Versioning",
          icon: const Icon(Icons.vpn_key_rounded),
          onTap: () {
            String version = "0.4.0";
            debugPrint("${AppVersionHelper.convertSemanticVersion(version)}");
          },
        ),
        SettingsListCard(
          content: "Print Global Config and Stored Config",
          icon: const Icon(Icons.sd_card),
          onTap: () async {
            FarmhubConfig? globalAuthCubitConfig =
                context.read<GlobalAuthCubit>().state.farmhubConfig;
            FarmhubConfig? storedConfig =
                await locator<IAppVersionLocalDatasource>().retrieveFarmhubConfig();

            debugPrint('''
------------------- Global Config -------------------
Minimum App Version: ${globalAuthCubitConfig?.minimumAppVersion}
Latest App Version: ${globalAuthCubitConfig?.latestAppVersion}
Local App Version: ${globalAuthCubitConfig?.localAppVersion}
------------------- Stored Config -------------------
Minimum App Version: ${storedConfig.minimumAppVersion}
Latest App Version: ${storedConfig.latestAppVersion}
Local App Version: ${storedConfig.localAppVersion}
------------------- Package Info -------------------
Version: ${await AppVersionHelper.getAppVersion()}
            ''');
          },
        ),
      ],
    );
  }
}

/// [index] is only used to decide if the top border should be rendered or not.
/// [0] If the top border should be drawn and all other numbers will not draw it.
// ignore: must_be_immutable
class SettingsListCard extends StatelessWidget {
  final String content;
  final Function()? onTap;
  final Icon icon;
  bool? isTop;

  SettingsListCard({
    Key? key,
    this.onTap,
    this.isTop,
    required this.content,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onLongPress: () {
          HapticFeedback.heavyImpact();
        },
        onTap: onTap,
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 14),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            decoration: BoxDecoration(
              border: Border(
                top: _resolveTop(context, isTop ??= false),
                bottom: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.14)),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                icon,
                const UIHorizontalSpace14(),
                Flexible(child: Text(content, style: Theme.of(context).textTheme.bodyText1)),
              ],
            )),
      ),
    );
  }

  BorderSide _resolveTop(BuildContext context, bool isTop) {
    if (isTop) {
      return BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.14));
    } else {
      return BorderSide.none;
    }
  }
}

class SettingsHeader extends StatelessWidget {
  final String content;

  const SettingsHeader(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 14, left: 14),
      alignment: Alignment.centerLeft,
      child: Text(
        content,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
