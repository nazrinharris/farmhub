import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ndialog/ndialog.dart';

import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';

import '../../../../core/auth/data/repository/auth_repository.dart';
import '../../../../features/farm_shop_manager/domain/i_farm_shop_manager_repository.dart';
import '../../../../features/produce_manager/data/repository/produce_manager_repository.dart';

part 'produce_dialog_cubit.freezed.dart';
part 'produce_dialog_state.dart';

enum DialogFromRoute { fromMainBottomSheet, fromProduce, fromPrice }

class ProduceDialogCubit extends Cubit<ProduceDialogState> {
  final IProduceManagerRepository repository;
  final IAuthRepository? authRepository;
  final GlobalUICubit globalUICubit;
  final GlobalAuthCubit globalAuthCubit;
  final IFarmShopManagerRepository? farmShopManagerRepository;

  ProduceDialogCubit(
    this.repository,
    this.globalUICubit,
    this.globalAuthCubit, {
    this.authRepository,
    this.farmShopManagerRepository,
  }) : super(const ProduceDialogState.initial());

  void showDeleteConfirmation({
    required BuildContext context,
    required Produce produce,
    required NAlertDialog confirmationDialog,
  }) async {
    // Show confirmation
    await confirmationDialog.show(context, transitionType: DialogTransitionType.Bubble);
  }

  void startDeletingProduce({
    required BuildContext context,
    required Produce produce,
    required ProgressDialog progressDialog,
    required Function({required BuildContext context, required Failure failure, String? errorTitle})
        showErrorDialog,
    required DialogFromRoute fromRoute,
  }) async {
    // Pop the confirmation dialog
    Navigator.of(context).pop();
    debugPrint("Delete in progress!");
    progressDialog.show();

    final failureOrDeleteProduce = await repository.deleteProduce(produce.produceId);

    failureOrDeleteProduce.fold(
      (f) {
        progressDialog.dismiss();
        showErrorDialog(context: context, failure: f);
      },
      (unit) {
        progressDialog.dismiss();
        switch (fromRoute) {
          case DialogFromRoute.fromMainBottomSheet:
            globalUICubit.setShouldRefreshMain(true);
            // Pops the [ModalBottomSheet]
            Navigator.of(context).pop();
            break;
          case DialogFromRoute.fromProduce:
            globalUICubit.setShouldRefreshMain(true);
            Navigator.of(context).pop();
            break;
          default:
            throw UnimplementedError(StackTrace.current.toString());
        }
      },
    );
  }

  void showEditProduce({
    required BuildContext context,
    required NAlertDialog editProduceDialog,
  }) async {
    debugPrint("Edit in Progress");
    editProduceDialog.show(context, transitionType: DialogTransitionType.Bubble);
  }

  void startEditProduce({
    required BuildContext context,
    required Produce produce,
    required GlobalKey<FormState> formKey,
    required TextEditingController textEditingController,
    required FocusNode formFocusNode,
    required ProgressDialog progressDialog,
    required DialogFromRoute fromRoute,
    required Function({required BuildContext context, required Failure failure, String? errorTitle})
        showErrorDialog,
  }) async {
    final bool isFormValid = formKey.currentState!.validate();

    if (isFormValid) {
      // Pop the edit dialog
      Navigator.of(context).pop();
      progressDialog.show();

      final failureOrEditProduce = await repository.editProduce(
        produce.produceId,
        textEditingController.text,
      );

      failureOrEditProduce.fold(
        (f) {
          progressDialog.dismiss();
          showErrorDialog(context: context, failure: f);
        },
        (unit) {
          switch (fromRoute) {
            case DialogFromRoute.fromMainBottomSheet:
              progressDialog.dismiss();
              globalUICubit.setShouldRefreshMain(true);
              // Pops the [ModalBottomSheet]
              Navigator.of(context).pop();
              break;
            case DialogFromRoute.fromProduce:
              progressDialog.dismiss();
              globalUICubit.setShouldRefreshProduce(true);
              globalUICubit.setShouldRefreshMain(true);
              break;
            default:
              throw UnimplementedError(StackTrace.current.toString());
          }
        },
      );
    }
  }

  void showEditSubPrice({
    required BuildContext context,
    required NAlertDialog editSubPriceDialog,
  }) {
    editSubPriceDialog.show(context, transitionType: DialogTransitionType.Bubble);
  }

  void startEditSubPrice({
    required BuildContext context,
    required String produceId,
    required String priceId,
    required String subPriceDate,
    required GlobalKey<FormState> formKey,
    required TextEditingController textEditingController,
    required FocusNode formFocusNode,
    required ProgressDialog progressDialog,
    required DialogFromRoute fromRoute,
    required Function({required BuildContext context, required Failure failure, String? errorTitle})
        showErrorDialog,
  }) async {
    final bool isFormValid = formKey.currentState!.validate();

    if (isFormValid) {
      // Pop the edit dialog
      Navigator.of(context).pop();
      progressDialog.show();

      final failurOrEditSubPrice = await repository.editSubPrice(
        produceId,
        priceId,
        num.parse(textEditingController.text),
        subPriceDate,
      );
      failurOrEditSubPrice.fold(
        (f) {
          progressDialog.dismiss();
          showErrorDialog(context: context, failure: f);
        },
        (unit) {
          progressDialog.dismiss();
          globalUICubit.setShouldRefreshMain(true);
          globalUICubit.setShouldRefreshProduce(true);
          globalUICubit.setShouldRefreshPrice(true);
          // Pops the [ModalBottomSheet]
          Navigator.of(context).pop();
        },
      );
    }
  }

  void showSubPriceDeleteConfirmationDialog({
    required BuildContext context,
    required NAlertDialog subPriceDeleteConfirmationDialog,
  }) {
    subPriceDeleteConfirmationDialog.show(context, transitionType: DialogTransitionType.Bubble);
  }

  void startDeletingSubPrice({
    required BuildContext context,
    required String produceId,
    required String priceId,
    required String subPriceDate,
    required ProgressDialog progressDialog,
    required DialogFromRoute fromRoute,
    required Function({required BuildContext context, required Failure failure, String? errorTitle})
        showErrorDialog,
  }) async {
    // Pop the edit dialog
    Navigator.of(context).pop();
    progressDialog.show();

    final failureOrDeleteSubPrice = await repository.deleteSubPrice(
        produceId: produceId, priceId: priceId, subPriceDate: subPriceDate);

    failureOrDeleteSubPrice.fold(
      (f) {
        progressDialog.dismiss();
        if (f.code != null && f.code == PM_ERR_LAST_PRICE) {
          showErrorDialog(context: context, failure: f, errorTitle: "You can't delete this.");
        } else {
          showErrorDialog(context: context, failure: f);
        }
      },
      (isPriceDocDeleted) {
        if (isPriceDocDeleted) {
          globalUICubit.setShouldRefreshProduce(true);
          globalUICubit.setShouldRefreshMain(true);
          progressDialog.dismiss();
          // Pops the modal and back to Produce
          Navigator.of(context)
            ..pop()
            ..pop();
        } else {
          globalUICubit.setShouldRefreshMain(true);
          globalUICubit.setShouldRefreshProduce(true);
          globalUICubit.setShouldRefreshPrice(true);
          progressDialog.dismiss();
          Navigator.of(context).pop();
        }
      },
    );
  }

  void showResetPasswordDialog({
    required BuildContext context,
    required NAlertDialog resetPasswordDialog,
  }) async {
    resetPasswordDialog.show(context);
  }

  /// When using this, if [email] is specified, then [formKey], [formFocusNode], and
  /// [textEditingController] must be specified. Creating and providing instances of
  /// their respective types is enough.
  void startSendResetPasswordLink({
    required BuildContext context,
    required Function({
      required BuildContext context,
      required String title,
      required String content,
    })
        showSuccessDialog,
    required Function({
      required BuildContext context,
      required Failure failure,
      String? errorTitle,
    })
        showErrorDialog,
    String? email,
    GlobalKey<FormState>? formKey,
    FocusNode? formFocusNode,
    TextEditingController? textEditingController,
  }) async {
    bool? isValid;

    if (email != null) {
      isValid = formKey!.currentState!.validate();
      formFocusNode!.unfocus();

      if (isValid) {
        debugPrint("Sending to $email");

        await sendResetPasswordAndReact(
          context,
          email,
          showSuccessDialog: showSuccessDialog,
          showErrorDialog: showErrorDialog,
        );
      }
    } else {
      // Email is not provided
      email ??= globalAuthCubit.state.farmhubUser!.email;

      await sendResetPasswordAndReact(
        context,
        //TODO: If the user doesn't have an email, they shouldn't be allowed to do this
        email,
        showErrorDialog: showErrorDialog,
        showSuccessDialog: showSuccessDialog,
      );
    }
  }

  Future<void> sendResetPasswordAndReact(
    BuildContext context,
    String? email, {
    required Function({
      required BuildContext context,
      required String title,
      required String content,
    })
        showSuccessDialog,
    required Function({
      required BuildContext context,
      required Failure failure,
      String? errorTitle,
    })
        showErrorDialog,
  }) async {
    Navigator.of(context).pop();
    final progressDialog = returnProgressDialog(
      context,
      loadingTitle: "Sending Email...",
      loadingMessage: "Please wait...",
    );
    progressDialog.show();

    final result = await authRepository!.sendPasswordResetEmail(email);

    result.fold(
      (f) {
        progressDialog.dismiss();
        showErrorDialog(context: context, failure: f);
      },
      (r) {
        progressDialog.dismiss();
        showSuccessDialog(
            context: context,
            title: "Email Sent!",
            content:
                "Please check your email inbox. If the email is not found, please check your spam.");
      },
    );
  }

  Future<void> startDeleteFarm(BuildContext context, Farm farm) async {
    Navigator.of(context).pop();

    final progress = returnProgressDialog(
      context,
      loadingTitle: "Deleting Farm...",
      loadingMessage: "This may take a few seconds...",
    );

    progress.show();

    final result = await farmShopManagerRepository!.deleteFarm(farmId: farm.farmId);

    result.fold(
      (f) {
        debugPrint(f.toString());
        progress.dismiss();
        showErrorDialog(context: context, failure: f);
      },
      (_) {
        progress.dismiss();
        globalUICubit.setShouldRefreshProfile(true);
      },
    );
  }

  Future<void> startDeleteShop(BuildContext context, Shop shop) async {
    Navigator.of(context).pop();

    final progress = returnProgressDialog(
      context,
      loadingTitle: "Deleting Shop...",
      loadingMessage: "This may take a few seconds...",
    );

    progress.show();

    final result = await farmShopManagerRepository!.deleteShop(shopId: shop.shopId);

    result.fold(
      (f) {
        debugPrint(f.toString());
        progress.dismiss();
        showErrorDialog(context: context, failure: f);
      },
      (_) {
        progress.dismiss();
        globalUICubit.setShouldRefreshProfile(true);
      },
    );
  }
}
