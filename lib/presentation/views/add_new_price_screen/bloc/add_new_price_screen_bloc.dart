// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/presentation/smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../../../features/produce_manager/data/repository/produce_manager_repository.dart';
import '../../../../features/produce_manager/domain/entities/produce/produce.dart';

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
  }) : super(const ANPSInitial(props: AddNewPriceScreenProps(produceList: []))) {
    on<_ANPEStarted>(started);
    on<_ANPEGetFirstTenProduce>(getFirstTenProduce);
    on<_ANPEExecAddNewPrice>(execAddNewPrice);
    on<_ANPEGetNextTenProduce>(getNextTenProduce);
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
    emit(AddNewPriceScreenState.pricesLoading(props: state.props));

    // Start getting produce.
    final failureOrProduceList = await produceManagerRepository.getFirstTenProduce();

    emit(failureOrProduceList.fold(
      (f) {
        debugPrintStack(stackTrace: f.stackTrace);
        return AddNewPriceScreenState.pricesError(
          props: state.props,
          message: f.message!,
          code: f.code!,
          stackTrace: f.stackTrace!,
        );
      },
      (produceList) => AddNewPriceScreenState.pricesCompleted(
          props: state.props.copyWith(produceList: produceList)),
    ));
  }

  FutureOr<void> getNextTenProduce(
    _ANPEGetNextTenProduce event,
    Emitter<AddNewPriceScreenState> emit,
  ) async {
    emit(AddNewPriceScreenState.nextPricesLoading(props: state.props));

    // Start getting next ten produce.
    final failureOrNewProduceList =
        await produceManagerRepository.getNextTenProduce(state.props.produceList);

    failureOrNewProduceList.fold(
      (f) {
        debugPrintStack(stackTrace: f.stackTrace);
        emit(AddNewPriceScreenState.pricesError(
          message: f.message ?? "Unknown Message",
          code: f.code ?? "Unknown Code - $f",
          stackTrace: f.stackTrace ?? StackTrace.current,
          props: state.props,
        ));
      },
      (produceList) {
        int index = 1;
        for (Produce produce in produceList) {
          debugPrint(
              // ignore: prefer_interpolation_to_compose_strings
              index.toString() + " " + produce.produceName + "   " + produce.produceId + "\n");
          index++;
        }

        emit(AddNewPriceScreenState.pricesCompleted(
            props: state.props.copyWith(
          produceList: produceList,
        )));
      },
    );
  }

  FutureOr<void> execAddNewPrice(
    _ANPEExecAddNewPrice event,
    Emitter<AddNewPriceScreenState> emit,
  ) async {
    // Check validation
    multipleFieldsFormBloc!.add(enableAlwaysValidation);
    multipleFieldsFormBloc!.add(unfocusAllNodes);
    bool isValid = multipleFieldsFormBloc!.state.props.formKey.currentState!.validate();

    if (isValid) {
      // Indicate Loading
      emit(AddNewPriceScreenState.pricesLoading(props: state.props));
      primaryButtonAwareCubit!.triggerLoading();

      // Start Adding Price
      final failureOrProduce = await produceManagerRepository.addNewPrice(
        produceId: event.produce.produceId,
        currentPrice: num.parse(multipleFieldsFormBloc!.state.props.firstFieldValue!),
        daysFromNow: num.parse(multipleFieldsFormBloc!.state.props.secondFieldValue!).toInt(),
      );

      failureOrProduce.fold((f) {
        primaryButtonAwareCubit!.triggerFirstPage();
        emit(
          AddNewPriceScreenState.addNewPriceError(
            props: state.props,
            failure: f,
          ),
        );
      }, (p) => emit(AddNewPriceScreenState.addNewPriceSuccess(produce: p, props: state.props)));
    } else {}
  }
}
