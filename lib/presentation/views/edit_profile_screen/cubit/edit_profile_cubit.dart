import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final GlobalAuthCubit globalAuthCubit;
  final GlobalUICubit globalUICubit;
  final IAuthRepository authRepository;
  final PrimaryButtonAwareCubit primaryButtonAwareCubit;
  final FirstTwoFieldsFormBloc formBloc;

  EditProfileCubit({
    required this.globalAuthCubit,
    required this.authRepository,
    required this.globalUICubit,
    required this.primaryButtonAwareCubit,
    required this.formBloc,
  }) : super(EditProfileState.initial());

  Future<void> execEditProfile(BuildContext context) async {
    formBloc.add(enableAlwaysValidation);
    formBloc.add(unfocusAllNodes);

    final bool isFormValid = formBloc.state.props.formKey.currentState!.validate();

    if (isFormValid) {
      final newUsername = formBloc.state.props.firstFieldValue;

      final progressDialog = returnProgressDialog(context,
          loadingTitle: "Saving changes..", loadingMessage: "It may take a moment, please wait.");

      emit(EditProfileState.loading());
      primaryButtonAwareCubit.triggerLoading();
      progressDialog.show();

      final FarmhubUser farmhubUser = globalAuthCubit.state.farmhubUser!;
      final updatedFarmhubUser = farmhubUser.copyWith(username: newUsername!);

      final result = await authRepository.updateRemoteUser(newUserData: updatedFarmhubUser);

      result.fold(
        (f) {
          emit(EditProfileState.error(f));
          primaryButtonAwareCubit.triggerFirstPage();
          progressDialog.dismiss();
          showErrorDialog(context: context, failure: f);
        },
        (user) {
          emit(EditProfileState.success());
          primaryButtonAwareCubit.triggerFirstPage();
          progressDialog.dismiss();
          globalUICubit.setShouldRefreshProfile(true);
          Navigator.of(context).pop();
        },
      );
    }
  }
}