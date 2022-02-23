import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/main.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';
part 'main_screen_bloc.freezed.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final ProduceManagerBloc produceManagerBloc;

  final AnimationController mainHeaderController;

  MainScreenBloc({
    required this.produceManagerBloc,
    required this.mainHeaderController,
  }) : super(const MSSInitial(props: MainScreenProps(isMainHeaderVisible: true))) {
    on<_MSEToggleMainHeader>(toggleMainHeader);
  }

  FutureOr<void> toggleMainHeader(
    _MSEToggleMainHeader event,
    Emitter<MainScreenState> emit,
  ) {
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
}
