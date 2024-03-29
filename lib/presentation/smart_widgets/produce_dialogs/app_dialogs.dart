// ignore_for_file: deprecated_member_use

import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/produce_dialog_cubit/produce_dialog_cubit.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:farmhub/presentation/views/edit_profile_screen/cubit/edit_profile_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ndialog/ndialog.dart';

import '../../../core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import '../../../core/errors/failures.dart';
import '../../../core/util/validation.dart';
import '../../shared_widgets/buttons.dart';

NAlertDialog returnProduceDeleteConfirmationDialog(
  BuildContext context,
  Produce produce,
  DialogFromRoute fromRoute,
) {
  return NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      color: Theme.of(context).colorScheme.errorContainer.withOpacity(0.45),
      child: Row(
        children: [
          Icon(
            Icons.warning_amber,
            color: Theme.of(context).colorScheme.error,
          ),
          const UIHorizontalSpace14(),
          Text(
            "Woah! Are you sure?",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.error),
          ),
        ],
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 24, right: 24),
      child: Text(
        "As of now, you can't undo this action. Only do this if you are sure.",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ),
    actions: [
      PrimaryButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        margin: const EdgeInsets.only(left: 14, right: 7, bottom: 14),
        content: "Back",
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      SecondaryButton(
        horizontalPadding: 0,
        type: SecondaryButtonType.red,
        margin: const EdgeInsets.only(right: 14, left: 7, bottom: 14),
        content: "Delete",
        buttonIcon: const Icon(Icons.delete, size: 20),
        onPressed: () {
          context.read<ProduceDialogCubit>().startDeletingProduce(
                context: context,
                produce: produce,
                progressDialog: returnDeleteProduceProgressDialog(context),
                showErrorDialog: showErrorDialog,
                fromRoute: fromRoute,
              );
        },
      ),
    ],
  );
}

ProgressDialog returnDeleteProduceProgressDialog(BuildContext context) {
  return ProgressDialog(
    context,
    dialogTransitionType: DialogTransitionType.Bubble,
    dismissable: false,
    title: Container(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
      child: Text(
        "Deleting..",
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: Theme.of(context).colorScheme.error),
      ),
    ),
    message: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 14, right: 14, left: 14),
      child: Text(
        "It may take some time, please wait..",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ),
    defaultLoadingWidget: Container(
      padding: const EdgeInsets.only(left: 14),
      child: CupertinoActivityIndicator(color: Theme.of(context).colorScheme.error),
    ),
  );
}

void showErrorDialog({
  required BuildContext context,
  required Failure failure,
  String? errorTitle,
}) async {
  await NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: Column(
        children: [
          const UIVerticalSpace6(),
          Icon(
            Icons.error_outline,
            color: Theme.of(context).colorScheme.error,
          ),
          const UIVerticalSpace14(),
          Text(
            errorTitle ?? "Uh oh, something went wrong.",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.error),
          ),
        ],
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.only(bottom: 24, right: 24, left: 24),
      child: Text(
        failure.message ?? "We are not sure what happened, please try again.",
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center,
      ),
    ),
  ).show(context, transitionType: DialogTransitionType.Bubble);
}

NAlertDialog returnEditProduceDialog({
  required BuildContext context,
  required Produce produce,
  required TextEditingController textEditingController,
  required GlobalKey<FormState> formKey,
  required FocusNode formFocusNode,
  required DialogFromRoute fromRoute,
}) {
  return NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 34),
      child: Row(
        children: [
          Icon(
            Icons.edit,
            color: Theme.of(context).colorScheme.primary,
          ),
          const UIHorizontalSpace14(),
          Text(
            "Change Produce Name",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ],
      ),
    ),
    content: SizedBox(
      height: 135,
      child: Column(
        children: [
          Form(
            key: formKey,
            child: TextFormField(
              focusNode: formFocusNode,
              controller: textEditingController,
              validator: validateProduceName,
              decoration: kInputDecoration(hintText: "What's the new name?", context: context),
              style: Theme.of(context).textTheme.bodyText1,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
          const UIVerticalSpace14(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SecondaryButton(
                type: SecondaryButtonType.noBorder,
                content: "Back",
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const UIHorizontalSpace14(),
              Expanded(
                child: SecondaryButton(
                  type: SecondaryButtonType.filled,
                  content: "Confirm",
                  horizontalPadding: 22,
                  buttonIcon: const Icon(Icons.check, size: 20),
                  onPressed: () {
                    context.read<ProduceDialogCubit>().startEditProduce(
                          context: context,
                          produce: produce,
                          formKey: formKey,
                          formFocusNode: formFocusNode,
                          textEditingController: textEditingController,
                          progressDialog: returnEditProduceProgressDialog(context),
                          showErrorDialog: showErrorDialog,
                          fromRoute: fromRoute,
                        );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

ProgressDialog returnEditProduceProgressDialog(BuildContext context) {
  return ProgressDialog(
    context,
    dialogTransitionType: DialogTransitionType.Bubble,
    dismissable: false,
    title: Container(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
      child: Text(
        "Changing produce name..",
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: Theme.of(context).colorScheme.primary),
      ),
    ),
    message: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 14, right: 14, left: 14),
      child: Text(
        "It may take some time, please wait..",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ),
    defaultLoadingWidget: Container(
      padding: const EdgeInsets.only(left: 14),
      child: CupertinoActivityIndicator(color: Theme.of(context).colorScheme.primary),
    ),
  );
}

NAlertDialog returnEditSubPriceDialog({
  required BuildContext context,
  required Produce produce,
  required Price price,
  required String subPriceDate,
  required TextEditingController textEditingController,
  required GlobalKey<FormState> formKey,
  required FocusNode formFocusNode,
  required DialogFromRoute fromRoute,
}) {
  return NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 34),
      child: Row(
        children: [
          Icon(
            Icons.edit,
            color: Theme.of(context).colorScheme.primary,
          ),
          const UIHorizontalSpace14(),
          Text(
            "Change Price",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ],
      ),
    ),
    content: SizedBox(
      height: 135,
      child: Column(
        children: [
          Form(
            key: formKey,
            child: TextFormField(
              focusNode: formFocusNode,
              controller: textEditingController,
              validator: validateCurrentPrice,
              decoration: kInputDecoration(hintText: "What's the price?", context: context),
              style: Theme.of(context).textTheme.bodyText1,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
          const UIVerticalSpace14(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SecondaryButton(
                type: SecondaryButtonType.noBorder,
                content: "Back",
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const UIHorizontalSpace14(),
              Expanded(
                child: SecondaryButton(
                  type: SecondaryButtonType.filled,
                  content: "Confirm",
                  horizontalPadding: 22,
                  buttonIcon: const Icon(Icons.check, size: 20),
                  onPressed: () {
                    context.read<ProduceDialogCubit>().startEditSubPrice(
                          context: context,
                          formKey: formKey,
                          formFocusNode: formFocusNode,
                          textEditingController: textEditingController,
                          progressDialog: returnEditSubPriceProgressDialog(context),
                          showErrorDialog: showErrorDialog,
                          fromRoute: fromRoute,
                          produceId: produce.produceId,
                          priceId: price.priceId,
                          subPriceDate: subPriceDate,
                        );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

ProgressDialog returnEditSubPriceProgressDialog(BuildContext context) {
  return ProgressDialog(
    context,
    dialogTransitionType: DialogTransitionType.Bubble,
    dismissable: false,
    title: Container(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
      child: Text(
        "Changing the price..",
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: Theme.of(context).colorScheme.primary),
      ),
    ),
    message: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 14, right: 14, left: 14),
      child: Text(
        "It may take some time, please wait..",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ),
    defaultLoadingWidget: Container(
      padding: const EdgeInsets.only(left: 14),
      child: CupertinoActivityIndicator(color: Theme.of(context).colorScheme.primary),
    ),
  );
}

String? validateProduceName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a name';
  } else if (value.length <= 2) {
    return 'Names must be at least 3 characters';
  } else {
    return null;
  }
}

String? validateCurrentPrice(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a value';
  } else if (double.tryParse(value) == null) {
    return 'Please enter a valid number: e.g. 12.80';
  } else if (double.tryParse(value)! < 0) {
    return 'A negative price is invalid';
  } else {
    return null;
  }
}

NAlertDialog returnSubPriceDeleteConfirmationDialog(
  BuildContext context,
  DialogFromRoute fromRoute,
  Produce produce,
  Price price,
  String subPriceDate,
) {
  return NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      color: Theme.of(context).colorScheme.errorContainer.withOpacity(0.45),
      child: Row(
        children: [
          Icon(
            Icons.warning_amber,
            color: Theme.of(context).colorScheme.error,
          ),
          const UIHorizontalSpace14(),
          Text(
            "Delete this price?",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.error),
          ),
        ],
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 24, left: 24, right: 24),
      child: Wrap(
        children: [
          Text(
            "You can't undo this action. Only do this if you are sure.",
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Text(
              "Also if this is the last Price, it will delete this whole Price.",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
    actions: [
      PrimaryButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        margin: const EdgeInsets.only(left: 14, right: 7, bottom: 14),
        content: "Back",
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      SecondaryButton(
        horizontalPadding: 0,
        type: SecondaryButtonType.red,
        margin: const EdgeInsets.only(right: 14, left: 7, bottom: 14),
        content: "Delete",
        buttonIcon: const Icon(Icons.delete, size: 20),
        onPressed: () {
          context.read<ProduceDialogCubit>().startDeletingSubPrice(
                context: context,
                produceId: produce.produceId,
                priceId: price.priceId,
                subPriceDate: subPriceDate,
                progressDialog: returnDeleteSubPriceProgressDialog(context),
                fromRoute: fromRoute,
                showErrorDialog: showErrorDialog,
              );
        },
      ),
    ],
  );
}

ProgressDialog returnDeleteSubPriceProgressDialog(BuildContext context) {
  return ProgressDialog(
    context,
    dialogTransitionType: DialogTransitionType.Bubble,
    dismissable: false,
    title: Container(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
      child: Text(
        "Deleting..",
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: Theme.of(context).colorScheme.primary),
      ),
    ),
    message: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 14, right: 14, left: 14),
      child: Text(
        "It may take some time, please wait..",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ),
    defaultLoadingWidget: Container(
      padding: const EdgeInsets.only(left: 14),
      child: CupertinoActivityIndicator(color: Theme.of(context).colorScheme.error),
    ),
  );
}

ProgressDialog returnProgressDialog(
  BuildContext context, {
  required String loadingTitle,
  required String loadingMessage,
  Color? indicatorColor,
  Color? textColor,
}) {
  return ProgressDialog(
    context,
    dialogTransitionType: DialogTransitionType.Bubble,
    dismissable: false,
    title: Container(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
      child: Text(
        loadingTitle,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: textColor),
      ),
    ),
    message: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 14, right: 14, left: 14),
      child: Text(
        loadingMessage,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ),
    defaultLoadingWidget: Container(
      padding: const EdgeInsets.only(left: 14),
      child: CupertinoActivityIndicator(color: indicatorColor),
    ),
  );
}

void showSuccessDialog({
  required BuildContext context,
  required String title,
  required String content,
}) async {
  await NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: Column(
        children: [
          const UIVerticalSpace6(),
          Icon(
            Icons.done,
            color: Theme.of(context).colorScheme.primary,
          ),
          const UIVerticalSpace14(),
          Text(title, style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.only(bottom: 24, right: 24, left: 24),
      child: Text(
        content,
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center,
      ),
    ),
  ).show(context, transitionType: DialogTransitionType.Bubble);
}

NAlertDialog returnResetPasswordConfirmation(
  BuildContext context, {
  bool? requireEmail = false,
  GlobalKey<FormState>? formKey,
  FocusNode? formFocusNode,
  TextEditingController? textEditingController,
  FarmhubUser? farmhubUser,
}) {
  return NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      color: Theme.of(context).colorScheme.errorContainer.withOpacity(0.45),
      child: Row(
        children: [
          Icon(
            Icons.warning_amber,
            color: Theme.of(context).colorScheme.error,
          ),
          const UIHorizontalSpace14(),
          Text(
            "Reset Password",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.error),
          ),
        ],
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 24, left: 24, right: 24),
      child: Wrap(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "We will send a link to your email.",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 14),
            child: Text(
              "Click the link to reset your password.",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
          if (requireEmail!)
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Form(
                key: formKey,
                child: TextFormField(
                  focusNode: formFocusNode,
                  controller: textEditingController,
                  validator: validateEmail,
                  decoration: kInputDecoration(hintText: "Enter your email", context: context),
                  style: Theme.of(context).textTheme.bodyText1,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
            ),
        ],
      ),
    ),
    actions: [
      PrimaryButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        margin: const EdgeInsets.only(left: 14, right: 7, bottom: 14),
        content: "Back",
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      SecondaryButton(
        horizontalPadding: 0,
        type: SecondaryButtonType.filled,
        margin: const EdgeInsets.only(right: 14, left: 7, bottom: 14),
        content: "Send Link",
        buttonIcon: Icon(Icons.link, size: 20, color: Theme.of(context).primaryColor),
        onPressed: () {
          if (requireEmail) {
            context.read<ProduceDialogCubit>().startSendResetPasswordLink(
                  context: context,
                  formKey: formKey,
                  formFocusNode: formFocusNode,
                  showSuccessDialog: showSuccessDialog,
                  showErrorDialog: showErrorDialog,
                  email: textEditingController!.text,
                );
          } else {
            context.read<ProduceDialogCubit>().startSendResetPasswordLink(
                  context: context,
                  formKey: formKey,
                  formFocusNode: formFocusNode,
                  showSuccessDialog: showSuccessDialog,
                  showErrorDialog: showErrorDialog,
                );
          }
        },
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.14),
        borderColor: Theme.of(context).primaryColor.withOpacity(0.3),
        contentColor: Theme.of(context).primaryColor,
      ),
    ],
  );
}

NAlertDialog returnSignOutConfirmationDialog(
  BuildContext context,
  Function() onConfirm,
) {
  return NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      color: Theme.of(context).colorScheme.errorContainer.withOpacity(0.45),
      child: Row(
        children: [
          Icon(
            Icons.logout,
            color: Theme.of(context).colorScheme.error,
          ),
          const UIHorizontalSpace14(),
          Text(
            "Sign Out",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.error),
          ),
        ],
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 24, left: 24, right: 24),
      child: Wrap(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Are you sure you want to sign out?",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
    actions: [
      PrimaryButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        margin: const EdgeInsets.only(left: 14, right: 7, bottom: 14),
        content: "Back",
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      SecondaryButton(
        horizontalPadding: 0,
        type: SecondaryButtonType.red,
        margin: const EdgeInsets.only(right: 14, left: 7, bottom: 14),
        content: "Sign Out",
        buttonIcon: Icon(Icons.logout, size: 20, color: Theme.of(context).colorScheme.error),
        onPressed: onConfirm,
      ),
    ],
  );
}

NAlertDialog returnDeleteFarmDialog(
  BuildContext context,
  Farm farm,
) {
  return NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      color: Theme.of(context).colorScheme.errorContainer.withOpacity(0.45),
      child: Row(
        children: [
          Icon(
            Icons.warning_amber,
            color: Theme.of(context).colorScheme.error,
          ),
          const UIHorizontalSpace14(),
          Text(
            "Are you sure?",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.error),
          ),
        ],
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 24, right: 24),
      child: Text(
        "${farm.farmName} will be deleted, this cannot be undone.",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ),
    actions: [
      PrimaryButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        margin: const EdgeInsets.only(left: 14, right: 7, bottom: 14),
        content: "Back",
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      SecondaryButton(
        horizontalPadding: 0,
        type: SecondaryButtonType.red,
        margin: const EdgeInsets.only(right: 14, left: 7, bottom: 14),
        content: "Delete",
        buttonIcon: const Icon(Icons.delete, size: 20),
        onPressed: () async {
          await context.read<ProduceDialogCubit>().startDeleteFarm(context, farm);
        },
      ),
    ],
  );
}

NAlertDialog returnDeleteShopDialog(
  BuildContext context,
  Shop shop,
) {
  return NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      color: Theme.of(context).colorScheme.errorContainer.withOpacity(0.45),
      child: Row(
        children: [
          Icon(
            Icons.warning_amber,
            color: Theme.of(context).colorScheme.error,
          ),
          const UIHorizontalSpace14(),
          Text(
            "Are you sure?",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.error),
          ),
        ],
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 24, right: 24),
      child: Text(
        "${shop.shopName} will be deleted, this cannot be undone.",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ),
    actions: [
      PrimaryButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        margin: const EdgeInsets.only(left: 14, right: 7, bottom: 14),
        content: "Back",
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      SecondaryButton(
        horizontalPadding: 0,
        type: SecondaryButtonType.red,
        margin: const EdgeInsets.only(right: 14, left: 7, bottom: 14),
        content: "Delete",
        buttonIcon: const Icon(Icons.delete, size: 20),
        onPressed: () async {
          await context.read<ProduceDialogCubit>().startDeleteShop(context, shop);
        },
      ),
    ],
  );
}

NAlertDialog returnChangeToRegularConfirmationDialog(
  BuildContext context,
  UserType newUserType,
  FarmhubUser user,
) {
  return NAlertDialog(
    dialogStyle: DialogStyle(
      titlePadding: EdgeInsets.zero,
      titleDivider: false,
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      color: Theme.of(context).colorScheme.errorContainer.withOpacity(0.45),
      child: Row(
        children: [
          Icon(
            Icons.warning_amber,
            color: Theme.of(context).colorScheme.error,
          ),
          const UIHorizontalSpace14(),
          Text(
            "Wait! Are you sure?",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.error),
          ),
        ],
      ),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(top: 14, bottom: 24),
            child: Text(
              "You are changing your user type to Regular",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, bottom: 14),
          child: Text(
            "This will NOT delete your present Farms and Shops",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Theme.of(context).colorScheme.error),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 14, bottom: 14),
          child: Text(
            "Change your type to Farmer or Business to access your Farms and Shops",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Theme.of(context).colorScheme.error, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
    actions: [
      PrimaryButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        margin: const EdgeInsets.only(left: 14, right: 7, bottom: 14),
        content: "Back",
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      SecondaryButton(
        horizontalPadding: 0,
        type: SecondaryButtonType.red,
        margin: const EdgeInsets.only(right: 14, left: 7, bottom: 14),
        content: "Confirm",
        onPressed: () async {
          Navigator.of(context).pop();
          await context.read<EditProfileCubit>().execEditProfile(context, newUserType, user);
        },
      ),
    ],
  );
}
