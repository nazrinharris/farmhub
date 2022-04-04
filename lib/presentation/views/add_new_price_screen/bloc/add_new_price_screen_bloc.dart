import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/presentation/smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../../features/produce_manager/domain/i_produce_manager_repository.dart';

part 'add_new_price_screen_event.dart';
part 'add_new_price_screen_state.dart';
part 'add_new_price_screen_bloc.freezed.dart';

class AddNewPriceScreenBloc extends Bloc<AddNewPriceScreenEvent, AddNewPriceScreenState> {
  final IProduceManagerRepository produceManagerRepository;
  final MultipleFieldsFormBloc? multipleFieldsFormBloc;
  final PrimaryButtonAwareCubit? primaryButtonAwareCubit;

  AddNewPriceScreenBloc({
    required this.produceManagerRepository,
    this.multipleFieldsFormBloc,
    this.primaryButtonAwareCubit,
  }) : super(const ANPSInitial()) {
    on<_ANPEStarted>(started);
    on<_ANPEGetFirstTenProduce>(getFirstTenProduce);
    on<_ANPEExecAddNewPrice>(execAddNewPrice);
  }

  FutureOr<void> started(
    _ANPEStarted event,
    Emitter<AddNewPriceScreenState> emit,
  ) {
    emit(state);
  }

  FutureOr<void> getFirstTenProduce(
    _ANPEGetFirstTenProduce event,
    Emitter<AddNewPriceScreenState> emit,
  ) async {
    emit(const AddNewPriceScreenState.loading());

    // Start getting produce.
    final failureOrProduceList = await produceManagerRepository.getFirstTenProduce();

    emit(failureOrProduceList.fold(
      (f) {
        debugPrintStack(stackTrace: f.stackTrace);
        return AddNewPriceScreenState.getFirstTenProduceError(
          message: f.message!,
          code: f.code!,
          stackTrace: f.stackTrace!,
        );
      },
      (produceList) => AddNewPriceScreenState.getFirstTenProduceSuccess(
        produceList: produceList,
      ),
    ));
  }

  FutureOr<void> execAddNewPrice(
    _ANPEExecAddNewPrice event,
    Emitter<AddNewPriceScreenState> emit,
  ) async {
    // Indicate Loading
    emit(const AddNewPriceScreenState.loading());
    primaryButtonAwareCubit!.triggerLoading();
    multipleFieldsFormBloc!.add(unfocusAllNodes);
    multipleFieldsFormBloc!.add(enableAlwaysValidation);

    // Start Adding Price
    final failureOrProduce = await produceManagerRepository.addNewPrice(
      produceId: event.produce.produceId,
      currentPrice: num.parse(multipleFieldsFormBloc!.state.props.firstFieldValue!),
    );

    failureOrProduce.fold((f) {
      primaryButtonAwareCubit!.triggerFirstPage();
      emit(
        AddNewPriceScreenState.addNewPriceError(
          message: f.message!,
          code: f.code!,
          stackTrace: f.stackTrace!,
        ),
      );
    }, (p) => emit(AddNewPriceScreenState.addNewPriceSuccess(produce: p)));
  }
}
