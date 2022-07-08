import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/app_router.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../../features/produce_manager/domain/i_produce_manager_repository.dart';
import '../../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';

part 'create_produce_screen_event.dart';
part 'create_produce_screen_state.dart';
part 'create_produce_screen_bloc.freezed.dart';

class CreateProduceScreenBloc extends Bloc<CreateProduceScreenEvent, CreateProduceScreenState> {
  final FirstTwoFieldsFormBloc firstTwoFieldsFormBloc;
  final IProduceManagerRepository produceManagerRepository;
  final PrimaryButtonAwareCubit primaryButtonAwareCubit;
  final GlobalUICubit globalUICubit;

  CreateProduceScreenBloc({
    required this.firstTwoFieldsFormBloc,
    required this.produceManagerRepository,
    required this.primaryButtonAwareCubit,
    required this.globalUICubit,
  }) : super(_Initial()) {
    on<_CPSEExecCreateNewProduce>(execCreateNewProduce);
  }

  FutureOr<void> execCreateNewProduce(
    _CPSEExecCreateNewProduce event,
    Emitter<CreateProduceScreenState> emit,
  ) async {
    emit(const CreateProduceScreenState.createNewProduceLoading());

    firstTwoFieldsFormBloc.add(unfocusAllNodes);
    firstTwoFieldsFormBloc.add(enableAlwaysValidation);

    final bool isFormValid = firstTwoFieldsFormBloc.state.props.formKey.currentState!.validate();

    if (isFormValid) {
      // Update UI
      primaryButtonAwareCubit.triggerLoading();

      final result = await produceManagerRepository.createNewProduce(
        produceName: firstTwoFieldsFormBloc.state.props.firstFieldValue!,
        currentProducePrice: num.parse(
          firstTwoFieldsFormBloc.state.props.secondFieldValue!,
        ),
      );

      result.fold(
        (f) {
          showErrorDialog(context: event.context, failure: f);
          primaryButtonAwareCubit.triggerFirstPage();
          globalUICubit.setShouldRefreshMain(true);
          emit(CreateProduceScreenState.createNewProduceError(
            code: f.code ?? "UNKNOWN CODE",
            message: f.message ?? "Something went wrong.",
          ));
        },
        (produce) {
          emit(CreateProduceScreenState.createNewProduceSuccess(produce: produce));
          primaryButtonAwareCubit.triggerFirstPage();
          Navigator.of(event.context).pushReplacementNamed(
            '/produce',
            arguments: ProduceArguments(produce),
          );
        },
      );
    } else {}
  }
}
