import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ndialog/ndialog.dart';

part 'produce_list_card_state.dart';
part 'produce_list_card_cubit.freezed.dart';

class ProduceListCardCubit extends Cubit<ProduceListCardState> {
  final IProduceManagerRepository repository;
  final GlobalUICubit globalUICubit;

  ProduceListCardCubit(
    this.repository,
    this.globalUICubit,
  ) : super(const ProduceListCardState.initial());

  void showDeleteConfirmation({
    required BuildContext context,
    required Produce produce,
  }) async {
    // Show confirmation
    await NAlertDialog(
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
            showDeleteInProgress(context);
          },
        ),
      ],
    ).show(context, transitionType: DialogTransitionType.Bubble);
  }

  void showDeleteInProgress(BuildContext context) async {
    print("Delete in progress!");

    ProgressDialog progressDialog = ProgressDialog(context,
        dialogTransitionType: DialogTransitionType.Bubble,
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
        ));

    progressDialog.show();

    await Future.delayed(Duration(seconds: 2));
    globalUICubit.setShouldRefreshMain(true);

    progressDialog.dismiss();

    Navigator.of(context).pop();
  }
}
