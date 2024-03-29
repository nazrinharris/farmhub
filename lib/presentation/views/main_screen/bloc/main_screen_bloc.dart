// ignore_for_file: avoid_print, library_private_types_in_public_api
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/app_version/app_version_repository.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/presentation/views/main_screen/toast_cubit/toast_cubit.dart';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../../../features/produce_manager/data/repository/produce_manager_repository.dart';
import '../../../../features/produce_manager/domain/entities/produce/produce.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';
part 'main_screen_bloc.freezed.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final ProduceManagerBloc produceManagerBloc;
  final IProduceManagerRepository produceManagerRepository;
  final IAppVersionRepository appVersionRepository;
  final AnimationController mainHeaderController;
  final ToastCubit toastCubit;

  MainScreenBloc({
    required this.produceManagerBloc,
    required this.mainHeaderController,
    required this.produceManagerRepository,
    required this.appVersionRepository,
    required this.toastCubit,
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
    final isVisible = !state.props.isMainHeaderVisible;

    if (state.props.isMainHeaderVisible) {
      mainHeaderController.animateTo(
        1.0,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutExpo,
      );
      emit(state.copyWith(props: state.props.copyWith(isMainHeaderVisible: isVisible)));
    } else {
      mainHeaderController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutExpo,
      );
      emit(state.copyWith(props: state.props.copyWith(isMainHeaderVisible: isVisible)));
    }
  }

  FutureOr<void> getFirstTenProduce(
    _MSEGetFirstTenProduce event,
    Emitter<MainScreenState> emit,
  ) async {
    debugPrint("Adding getFirstTenProduce event...");
    emit(MainScreenState.pricesLoading(props: state.props));

    debugPrint("Refreshing app version...");
    final result = await appVersionRepository.refreshAppVersion();
    result.fold((f) {
      // Show toast for error
      toastCubit.showToast(f.message ?? "We're not sure what happened.");
    }, (res) {
      if (res) debugPrint("App version refreshed.");
    });

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
    if (state is MSSNextPricesLoading || state is MSSPricesLoading) {
      // Do nothing
    } else {
      if (state.props.produceList.isEmpty) {
        // Do nothing
      } else {
        debugPrint("Adding getNextTenProduce event...");
        emit(MainScreenState.nextPricesLoading(props: state.props));

        // Start getting next ten produce
        final failureOrNewProduceList =
            await produceManagerRepository.getNextTenProduce(state.props.produceList);

        // Check if there are more produce
        failureOrNewProduceList.fold((f) {
          debugPrint(f.toString());
          emit(MainScreenState.pricesError(
            props: state.props,
            failure: f,
          ));
        }, (produceList) {
          int index = 1;
          for (Produce produce in produceList) {
            debugPrint("$index ${produce.produceName}   ${produce.produceId}\n");
            index++;
          }
          emit(MainScreenState.pricesCompleted(
              props: state.props.copyWith(produceList: produceList)));
        });
      }
    }
  }

  FutureOr<void> refresh(
    _MSERefresh event,
    Emitter<MainScreenState> emit,
  ) async {
    debugPrint("Refresh MainScreen beginning.");
    // Start loading and reset the list
    emit(MainScreenState.pricesLoading(props: state.props.copyWith(produceList: [])));

    debugPrint("Refreshing app version...");
    final result = await appVersionRepository.refreshAppVersion();
    result.fold((f) {
      // Show toast for error
      toastCubit.showToast(f.message ?? "We're not sure what happened.");
    }, (res) {
      if (res) debugPrint("App version refreshed.");
    });

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
}
