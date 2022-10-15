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
import 'package:ndialog/ndialog.dart';

import '../../../../core/errors/exceptions.dart';

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

  Future<void> checkUserTypeChange(
      BuildContext context, UserType newUserType, FarmhubUser user) async {
    if (newUserType == UserType.regular &&
        (user.userType == UserType.farmer || user.userType == UserType.business)) {
      final dialog = returnChangeToRegularConfirmationDialog(context, newUserType, user);

      dialog.show(context, transitionType: DialogTransitionType.Bubble);
    } else {
      await execEditProfile(context, newUserType, user);
    }
  }

  Future<void> execEditProfile(BuildContext context, UserType newUserType, FarmhubUser user) async {
    formBloc.add(enableAlwaysValidation);
    formBloc.add(unfocusAllNodes);

    final bool isFormValid = formBloc.state.props.formKey.currentState!.validate();

    if (isFormValid) {
      //! Check if the userType changed to [Regular] from either [Farmer] or [Business]
      final newUsername = formBloc.state.props.firstFieldValue;

      final progressDialog = returnProgressDialog(context,
          loadingTitle: "Saving changes..", loadingMessage: "It may take a moment, please wait.");

      emit(EditProfileState.loading());
      primaryButtonAwareCubit.triggerLoading();
      progressDialog.show();

      final FarmhubUser farmhubUser = globalAuthCubit.state.farmhubUser!;

      final updatedFarmhubUser =
          farmhubUser.copyWith(username: newUsername!, userType: newUserType);

      final result = await authRepository.updateRemoteUser(newUserData: updatedFarmhubUser);

      result.fold(
        (f) {
          print(f);
          print(farmhubUser.uid);
          emit(EditProfileState.error(f));
          primaryButtonAwareCubit.triggerFirstPage();
          progressDialog.dismiss();
          showErrorDialog(context: context, failure: f);
        },
        (user) {
          emit(const EditProfileState.success());
          primaryButtonAwareCubit.triggerFirstPage();
          progressDialog.dismiss();
          globalUICubit.setShouldRefreshProfile(true);
          Navigator.of(context).pop();
        },
      );
    }
  }
}
