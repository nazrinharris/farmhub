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
    required NAlertDialog confirmationDialog,
  }) async {
    // Show confirmation
    await confirmationDialog.show(context, transitionType: DialogTransitionType.Bubble);
  }

  void startDeleting({
    required BuildContext context,
    required Produce produce,
    required ProgressDialog progressDialog,
    required Function(BuildContext context, Failure failure) showErrorDialog,
  }) async {
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
        globalUICubit.setShouldRefreshMain(true);
        // Pops the [ModalBottomSheet]
        Navigator.of(context).pop();
      },
    );
  }
}
