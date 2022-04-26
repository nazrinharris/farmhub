// ignore_for_file: avoid_print
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/domain/entities/produce/produce.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';
part 'main_screen_bloc.freezed.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final ProduceManagerBloc produceManagerBloc;
  final IProduceManagerRepository produceManagerRepository;
  final AnimationController mainHeaderController;

  MainScreenBloc({
    required this.produceManagerBloc,
    required this.mainHeaderController,
    required this.produceManagerRepository,
  }) : super(const MSSPricesLoading(
            props: MainScreenProps(
          isMainHeaderVisible: true,
          produceList: [],
        ))) {
    on<_MSEStarted>(started);
    on<_MSEToggleMainHeader>(toggleMainHeader);
    on<_MSEGetFirstTenProduce>(getFirstTenProduce);
    on<_MSEGetNextTenProduce>(getNextTenProduce);
  }

  FutureOr<void> started(
    _MSEStarted event,
    Emitter<MainScreenState> emit,
  ) async {}

  FutureOr<void> toggleMainHeader(
    _MSEToggleMainHeader event,
    Emitter<MainScreenState> emit,
  ) async {
    final _isVisible = !state.props.isMainHeaderVisible;

    if (state.props.isMainHeaderVisible) {
      mainHeaderController.animateTo(
        1.0,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutExpo,
      );
      emit(state.copyWith(props: state.props.copyWith(isMainHeaderVisible: _isVisible)));
    } else {
      mainHeaderController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutExpo,
      );
      emit(state.copyWith(props: state.props.copyWith(isMainHeaderVisible: _isVisible)));
    }
  }

  FutureOr<void> getFirstTenProduce(
    _MSEGetFirstTenProduce event,
    Emitter<MainScreenState> emit,
  ) async {
    print("Adding getFirstTenProduce event...");
    produceManagerBloc.add(const ProduceManagerEvent.execGetFirstTenProduce());

    return emit.onEach(produceManagerBloc.stream, onData: (ProduceManagerState PMState) {
      if (PMState is PMSGetFirstTenProduceLoading) {
        // Do nothing.

      } else if (PMState is PMSGetFirstTenProduceSuccess) {
        emit(
          MainScreenState.pricesCompleted(
            props: state.props.copyWith(produceList: PMState.produceList),
          ),
        );
      } else if (PMState is PMSGetFirstTenProduceError) {
        debugPrintStack(stackTrace: PMState.stackTrace);
        emit(MainScreenState.pricesError(
          props: state.props,
          code: PMState.code,
          message: PMState.message,
        ));
      } else {}
    });
  }

  FutureOr<void> getNextTenProduce(
    _MSEGetNextTenProduce event,
    Emitter<MainScreenState> emit,
  ) async {
    print("Adding getNextTenProduce event...");
    emit(MainScreenState.nextPricesLoading(props: state.props));

    // Start getting next ten produce
    final failureOrNewProduceList =
        await produceManagerRepository.getNextTenProduce(state.props.produceList);

    failureOrNewProduceList.fold(
        (f) => emit(MainScreenState.pricesError(
              props: state.props,
              code: f.code ?? "Unknown Code",
              message: f.message ?? "Unknown Message",
            )), (produceList) {
      int index = 1;
      for (Produce produce in produceList) {
        print(index.toString() + " " + produce.produceName + "   " + produce.produceId + "\n");
        index++;
      }
      emit(MainScreenState.pricesCompleted(props: state.props.copyWith(produceList: produceList)));
    });
  }
}
