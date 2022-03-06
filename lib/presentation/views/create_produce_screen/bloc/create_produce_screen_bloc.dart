import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/two_fields_form.dart/two_fields_form_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/domain/entities/produce/produce.dart';

part 'create_produce_screen_event.dart';
part 'create_produce_screen_state.dart';
part 'create_produce_screen_bloc.freezed.dart';

class CreateProduceScreenBloc extends Bloc<CreateProduceScreenEvent, CreateProduceScreenState> {
  final FirstTwoFieldsFormBloc firstTwoFieldsFormBloc;
  final ProduceManagerBloc produceManagerBloc;
  final PrimaryButtonAwareCubit primaryButtonAwareCubit;

  CreateProduceScreenBloc({
    required this.firstTwoFieldsFormBloc,
    required this.produceManagerBloc,
    required this.primaryButtonAwareCubit,
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

      produceManagerBloc.add(ProduceManagerEvent.execCreateProduce(
        produceName: firstTwoFieldsFormBloc.state.props.firstFieldValue!,
        currentProducePrice: num.parse(firstTwoFieldsFormBloc.state.props.secondFieldValue!),
      ));

      await emit.onEach(
        produceManagerBloc.stream,
        onData: (ProduceManagerState PMState) {
          if (PMState is PMSCreateNewProduceLoading) {
            // Do nothing.
          } else if (PMState is PMSCreateNewProduceSuccess) {
            emit(CreateProduceScreenState.createNewProduceSuccess(produce: PMState.produce));
            primaryButtonAwareCubit.triggerFirstPage();
            Future.delayed(const Duration(seconds: 1)).then(
              // Navigate!
              (_) => print('Succeeded in creation!'),
            );
          } else if (PMState is PMSCreateNewProduceError) {
            debugPrintStack(stackTrace: PMState.stackTrace);
            emit(CreateProduceScreenState.createNewProduceError(
              code: PMState.code,
              message: PMState.message,
            ));
          } else {}
        },
      );
    } else {}
  }
}
