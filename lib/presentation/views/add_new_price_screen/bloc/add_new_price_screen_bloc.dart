import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../../features/produce_manager/domain/i_produce_manager_repository.dart';

part 'add_new_price_screen_event.dart';
part 'add_new_price_screen_state.dart';
part 'add_new_price_screen_bloc.freezed.dart';

class AddNewPriceScreenBloc extends Bloc<AddNewPriceScreenEvent, AddNewPriceScreenState> {
  final IProduceManagerRepository produceManagerRepository;

  AddNewPriceScreenBloc({
    required this.produceManagerRepository,
  }) : super(const ANPSInitial()) {
    on<_ANPEStarted>(started);
    on<_ANPEGetFirstTenProduce>(getFirstTenProduce);
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
}
