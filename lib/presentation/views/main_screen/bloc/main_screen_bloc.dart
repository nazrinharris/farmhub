// ignore_for_file: avoid_print
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/domain/entities/produce/produce.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';
part 'main_screen_bloc.freezed.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final ProduceManagerBloc produceManagerBloc;
  final AnimationController mainHeaderController;

  MainScreenBloc({
    required this.produceManagerBloc,
    required this.mainHeaderController,
  }) : super(const MSSPricesLoading(props: MainScreenProps(isMainHeaderVisible: true))) {
    on<_MSEStarted>(started);
    on<_MSEToggleMainHeader>(toggleMainHeader);
    on<_MSEGetFirstTenProduce>(getFirstTenProduce);
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
        ;
        emit(
          MainScreenState.mainPricesCompleted(
            props: state.props,
            produceList: PMState.produceList,
          ),
        );
      } else if (PMState is PMSGetFirstTenProduceError) {
        emit(MainScreenState.mainPricesError(
          props: state.props,
          code: PMState.code,
          message: PMState.message,
        ));
      } else {}
    });
  }
}
