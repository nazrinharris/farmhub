import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ndialog/ndialog.dart';

import '../../core/errors/failures.dart';
import '../smart_widgets/produce_list_card/cubit/produce_list_card_cubit.dart';
import 'buttons.dart';

NAlertDialog returnDeleteConfirmationDialog(BuildContext context, Produce produce) {
  return NAlertDialog(
    blur: 4,
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
          Navigator.of(context).pop();
          context.read<ProduceListCardCubit>().startDeleting(
                context: context,
                produce: produce,
                progressDialog: returnDeleteProgressDialog(context),
                showErrorDialog: showDeleteErrorDialog,
              );
        },
      ),
    ],
  );
}

ProgressDialog returnDeleteProgressDialog(BuildContext context) {
  return ProgressDialog(
    context,
    dialogTransitionType: DialogTransitionType.Bubble,
    blur: 4,
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
      padding: EdgeInsets.only(left: 14),
      child: CircularProgressIndicator(color: Theme.of(context).colorScheme.error),
    ),
  );
}

void showDeleteErrorDialog(BuildContext context, Failure failure) async {
  await NAlertDialog(
    blur: 4,
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
            "Uh oh, something went wrong.",
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
