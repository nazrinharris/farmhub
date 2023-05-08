import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/auth_cubit/auth_cubit.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_config.dart';
import 'package:farmhub/locator.dart';

import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ndialog/ndialog.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../core/auth/data/repository/auth_repository.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final IAuthRepository authRepository;
  final AuthCubit authCubit;

  SettingsCubit({required this.authRepository, required this.authCubit})
      : super(const SettingsState.initial());

  void showResetPasswordDialog(BuildContext context, {required NAlertDialog resetPasswordDialog}) {
    resetPasswordDialog.show(context, transitionType: DialogTransitionType.Bubble);
  }

  void signOut(BuildContext context) async {
    final result = await authRepository.signOut();

    // ignore: use_build_context_synchronously
    final progressDialog = returnProgressDialog(
      context,
      loadingTitle: "Logging out...",
      loadingMessage: "It might take a while...",
    );

    progressDialog.show();

    result.fold(
      (f) {
        progressDialog.dismiss();
        showErrorDialog(context: context, failure: f);
      },
      (r) {
        progressDialog.dismiss();
        Navigator.of(context).pushNamedAndRemoveUntil('/start', (route) => false);
      },
    );
  }

  void retrieveAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    emit(state.copyWith(appVersion: packageInfo.version));
  }

  void debugPrintMeta() async {
    FarmhubConfig farmhubConfig = await authCubit.getFarmhubConfig();

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final idTokenResult = await FirebaseAuth.instance.currentUser!.getIdTokenResult();
    dynamic appVersionClaim = idTokenResult.claims?['appVersion'];

    debugPrint('''
    App Version: ${packageInfo.version}
    App Version Claim: $appVersionClaim
    ---- Farmhub Config ----
    Minimum App Version: ${farmhubConfig.minimumAppVersion}
    Latest App Version: ${farmhubConfig.latestAppVersion}
      ''');
  }
}
