import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ndialog/ndialog.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsState.initial());

  void showResetPasswordDialog(BuildContext context, {required NAlertDialog resetPasswordDialog}) {
    resetPasswordDialog.show(context, transitionType: DialogTransitionType.Bubble);
  }
}
