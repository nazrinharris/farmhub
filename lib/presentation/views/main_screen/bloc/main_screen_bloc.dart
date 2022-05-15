// ignore_for_file: avoid_print
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
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
    on<_MSERefresh>(refresh);
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
    emit(MainScreenState.pricesLoading(props: state.props));

    final failureOrProduceList = await produceManagerRepository.getFirstTenProduce();

    failureOrProduceList.fold(
      (f) {
        emit(MainScreenState.pricesError(props: state.props, failure: f));
      },
      (produceList) {
        emit(
            MainScreenState.pricesCompleted(props: state.props.copyWith(produceList: produceList)));
      },
    );
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

    // Check if there are more produce
    failureOrNewProduceList.fold((f) {
      print(f.toString());
      emit(MainScreenState.pricesError(
        props: state.props,
        failure: f,
      ));
    }, (produceList) {
      int index = 1;
      for (Produce produce in produceList) {
        print(index.toString() + " " + produce.produceName + "   " + produce.produceId + "\n");
        index++;
      }
      emit(MainScreenState.pricesCompleted(props: state.props.copyWith(produceList: produceList)));
    });
  }

  FutureOr<void> refresh(
    _MSERefresh event,
    Emitter<MainScreenState> emit,
  ) async {
    print("Refresh MainScreen beginning.");
    // Start loading and reset the list
    emit(MainScreenState.pricesLoading(props: state.props.copyWith(produceList: [])));

    await Future.delayed(Duration(seconds: 5));

    final failureOrProduceList = await produceManagerRepository.getFirstTenProduce();

    await failureOrProduceList.fold(
      (f) {
        emit(MainScreenState.pricesError(props: state.props, failure: f));
      },
      (produceList) {
        emit(
            MainScreenState.pricesCompleted(props: state.props.copyWith(produceList: produceList)));
      },
    );
  }
}
