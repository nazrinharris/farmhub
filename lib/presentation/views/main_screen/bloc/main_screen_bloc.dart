// ignore_for_file: avoid_print
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/main.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../../features/produce_manager/domain/i_produce_manager_repository.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';
part 'main_screen_bloc.freezed.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final IProduceManagerRepository produceManagerRepository;
  final ProduceManagerBloc produceManagerBloc;
  final AnimationController mainHeaderController;

  MainScreenBloc({
    required this.produceManagerBloc,
    required this.mainHeaderController,
    required this.produceManagerRepository,
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
    // print("Adding getFirstTenProduce event...");
    // produceManagerBloc.add(const ProduceManagerEvent.execGetFirstTenProduce());

    // produceManagerBloc.stream.listen((PMEvent) {
    //   if (PMEvent is PMSGetFirstTenProduceLoading) {
    //     // Do nothing.
    //     print(PMEvent);
    //   } else if (PMEvent is PMSGetFirstTenProduceSuccess) {
    //     print(PMEvent);
    //     emit(
    //       MainScreenState.mainPricesCompleted(
    //         props: state.props,
    //         produceList: PMEvent.produceList,
    //       ),
    //     );
    //   } else if (PMEvent is PMSGetFirstTenProduceError) {
    //     print(PMEvent);

    //     emit(MainScreenState.mainPricesError(
    //       props: state.props,
    //       code: PMEvent.code,
    //       message: PMEvent.message,
    //     ));
    //   } else {
    //     print(PMEvent);
    //     emit(MainScreenState.initial(props: state.props));
    //   }
    // });

    print("Starting getFirstTenProduce...");
    emit(MainScreenState.mainPricesLoading(props: state.props));

    print(state);

    final failureOrList = await produceManagerRepository.getFirstTenProduce();

    failureOrList.fold(
      (f) {
        print(f);
        emit(MainScreenState.mainPricesError(
          props: state.props,
          code: f.code!,
          message: f.message!,
        ));
        print(state);
      },
      (list) {
        print(list);
        emit(MainScreenState.mainPricesCompleted(
          props: state.props,
          produceList: list,
        ));
        print(state);
      },
    );
  }
}
