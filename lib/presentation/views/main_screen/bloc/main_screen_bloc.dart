// ignore_for_file: prefer_const_constructors
// ignore_for_file: avoid_print
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';

import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
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
  }) : super(MSSPricesLoading(
            props: MainScreenProps(
          farmhubUser: null,
          isMainHeaderVisible: true,
          produceList: [],
        ))) {
    on<_MSEStarted>(started);
    on<_MSEToggleMainHeader>(toggleMainHeader);
    on<_MSEGetFirstTenProduce>(getFirstTenProduce);
    on<_MSEGetNextTenProduce>(getNextTenProduce);
    on<_MSERefresh>(refresh);
    on<_MSEUpdateStateFarmhubUser>(updateStateFarmhubUser);
  }

  FutureOr<void> started(
    _MSEStarted event,
    Emitter<MainScreenState> emit,
  ) async {
    print("MainScreenBloc: MSEStarted");
  }

  FutureOr<void> toggleMainHeader(
    _MSEToggleMainHeader event,
    Emitter<MainScreenState> emit,
  ) async {
    print("MainScreenBloc: MSEToggleMainHeader");
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
    print("MainScreenBloc: MSEGetFirstTenProduce");

    emit(MainScreenState.pricesLoading(props: state.props));

    final failureOrProduceList = await produceManagerRepository.getFirstTenProduce();

    failureOrProduceList.fold(
      (f) {
        emit(MainScreenState.pricesError(
          props: state.props.copyWith(farmhubUser: locator<GlobalAuthCubit>().state.farmhubUser),
          failure: f,
        ));
      },
      (produceList) {
        emit(MainScreenState.pricesCompleted(
          props: state.props.copyWith(
            produceList: produceList,
            farmhubUser: locator<GlobalAuthCubit>().state.farmhubUser,
          ),
        ));
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
        print("MainScreenBloc: MSEGetNextTenProduce");
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
    print("MainScreenBloc: MSERefresh");

    // Start loading and reset the list
    emit(
      MainScreenState.pricesLoading(
        props: state.props.copyWith(
          produceList: [],
          farmhubUser: state.props.farmhubUser,
        ),
      ),
    );

    List<dynamic> operations = await Future.wait<dynamic>([
      locator<GlobalAuthCubit>().updateGlobalAuthCubit(),
      produceManagerRepository.getFirstTenProduce()
    ]);

    final failureOrProduceList = operations[1] as Either<Failure, List<Produce>>;

    failureOrProduceList.fold(
      (f) {
        emit(MainScreenState.pricesError(
          props: state.props.copyWith(
            farmhubUser: locator<GlobalAuthCubit>().state.farmhubUser,
          ),
          failure: f,
        ));
      },
      (produceList) {
        emit(MainScreenState.pricesCompleted(
          props: state.props.copyWith(
            produceList: produceList,
            farmhubUser: locator<GlobalAuthCubit>().state.farmhubUser,
          ),
        ));
      },
    );
  }

  FutureOr<void> updateStateFarmhubUser(
    _MSEUpdateStateFarmhubUser event,
    Emitter<MainScreenState> emit,
  ) async {
    print("MainScreenBloc: MSEUpdateStateFarmhubUser");

    emit(state.copyWith(
        props: state.props.copyWith(
      farmhubUser: locator<GlobalAuthCubit>().state.farmhubUser,
    )));
  }
}
