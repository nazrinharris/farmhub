import 'package:bloc/bloc.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ndialog/ndialog.dart';

part 'produce_dialog_state.dart';
part 'produce_dialog_cubit.freezed.dart';

enum DialogFromRoute { fromMainBottomSheet, fromProduce, fromPrice }

class ProduceDialogCubit extends Cubit<ProduceDialogState> {
  final IProduceManagerRepository repository;
  final GlobalUICubit globalUICubit;

  ProduceDialogCubit(
    this.repository,
    this.globalUICubit,
  ) : super(const ProduceDialogState.initial());

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
    required Function(BuildContext context, Failure failure) showErrorDialog,
    required DialogFromRoute fromRoute,
  }) async {
    // Pop the confirmation dialog
    Navigator.of(context).pop();
    print("Delete in progress!");
    progressDialog.show();

    await Future.delayed(Duration(seconds: 1));

    final failureOrDeleteProduce = await repository.deleteProduce(produce.produceId);

    failureOrDeleteProduce.fold(
      (f) {
        progressDialog.dismiss();
        showErrorDialog(context, f);
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
    print("Edit in Progress");
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
    required Function(BuildContext context, Failure failure) showErrorDialog,
  }) async {
    final bool isFormValid = formKey.currentState!.validate();

    if (isFormValid) {
      // Pop the edit dialog
      Navigator.of(context).pop();
      progressDialog.show();

      await Future.delayed(Duration(seconds: 2));

      final failureOrEditProduce = await repository.editProduce(
        produce.produceId,
        textEditingController.text,
      );

      failureOrEditProduce.fold(
        (f) {
          progressDialog.dismiss();
          showErrorDialog(context, f);
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
    required Function(BuildContext context, Failure failure) showErrorDialog,
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
          showErrorDialog(context, f);
        },
        (unit) {
          progressDialog.dismiss();
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
    required Function(BuildContext context, Failure failure) showErrorDialog,
  }) async {
    // Pop the edit dialog
    Navigator.of(context).pop();
    progressDialog.show();
  }
}
