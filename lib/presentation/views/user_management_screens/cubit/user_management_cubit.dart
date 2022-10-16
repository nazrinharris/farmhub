import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../smart_widgets/produce_dialogs/app_dialogs.dart';

part 'user_management_state.dart';
part 'user_management_cubit.freezed.dart';

class UserManagementCubit extends Cubit<UserManagementState> {
  final IAuthRepository authRepository;

  UserManagementCubit({required this.authRepository}) : super(UserManagementState.initial());

  Future<void> chooseUserType({
    required String uid,
    required UserType userType,
    required BuildContext context,
  }) async {
    final progress = returnProgressDialog(
      context,
      loadingTitle: "Updating profile...",
      loadingMessage: "It should only take a couple seconds...",
    );

    progress.show();

    final result = await authRepository.chooseUserType(uid, userType);

    result.fold(
      (f) {
        showErrorDialog(context: context, failure: f);
        progress.dismiss();
      },
      (r) {
        print("UserType Change Success");
        context.read<GlobalAuthCubit>().updateGlobalAuthCubit();
        Navigator.of(context).pop();
        progress.dismiss();
      },
    );
  }
}
