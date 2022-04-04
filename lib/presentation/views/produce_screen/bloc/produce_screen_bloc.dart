import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'produce_screen_event.dart';
part 'produce_screen_state.dart';
part 'produce_screen_bloc.freezed.dart';

class ProduceScreenBloc extends Bloc<ProduceScreenEvent, ProduceScreenState> {
  final TabController tabController;

  ProduceScreenBloc({
    required this.tabController,
  }) : super(_PSSInitial(
            props: ProduceScreenProps(
          tabController: tabController,
          index: tabController.index,
        ))) {
    on<_PSEStarted>(started);
    on<_PSETabChanged>(tabChanged);
  }

  FutureOr<void> started(
    _PSEStarted event,
    Emitter<ProduceScreenState> emit,
  ) {
    emit(state);
  }

  FutureOr<void> tabChanged(
    _PSETabChanged event,
    Emitter<ProduceScreenState> emit,
  ) {
    /// List of index correspondent
    /// 0 - 1W
    /// 1 - 2W
    /// 2 - 1M
    /// 3 - 2M
    /// 4 - 6M
    /// 5 - 1Y
    if (tabController.indexIsChanging) {
      emit(state.copyWith(props: state.props.copyWith(index: tabController.index)));
      print(tabController.index);
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
