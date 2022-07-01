import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ndialog/ndialog.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final IAuthRepository authRepository;

  SettingsCubit({required this.authRepository}) : super(SettingsState.initial());

  void showResetPasswordDialog(BuildContext context, {required NAlertDialog resetPasswordDialog}) {
    resetPasswordDialog.show(context, transitionType: DialogTransitionType.Bubble);
  }

  void signOut(BuildContext context) async {
    final result = await authRepository.signOut();

    final progressDialog = returnProgressDialog(
      context,
      loadingTitle: "Logging out...",
      loadingMessage: "It might take a while...",
    );

    progressDialog.show();

    await Future.delayed(Duration(seconds: 2));

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
}
