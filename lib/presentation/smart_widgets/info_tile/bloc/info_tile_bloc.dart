import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../info_tile.dart';

part 'info_tile_event.dart';
part 'info_tile_state.dart';
part 'info_tile_bloc.freezed.dart';

class InfoTileBloc extends Bloc<InfoTileEvent, InfoTileState> {
  final InfoTileProps infoTileProps;

  InfoTileBloc({required this.infoTileProps}) : super(_Loading(infoTileProps)) {
    on<ToggleExpansion>(toggleExpansion);
    on<TriggerStateChange>(triggerStateChange);
  }

  FutureOr<void> toggleExpansion(
    ToggleExpansion event,
    Emitter<InfoTileState> emit,
  ) {
    final bool isExpanded = !state.infoTileProps.isExpanded;
    emit(state.copyWith.infoTileProps(isExpanded: isExpanded));
  }

  FutureOr<void> triggerStateChange(
    TriggerStateChange event,
    Emitter<InfoTileState> emit,
  ) {
    emit(state.copyWith(infoTileProps: event.infoTileProps));
  }
}

InfoTileProps infoTileIdle = const InfoTileProps(
  leadingText: 'No Process Running Currently',
  child: Text(
      'To be completely honest with you, this should not be here. If it is, then it is a bug. No cap.'),
  isAbleToExpand: true,
  isExpanded: false,
  currentStatus: InfoTileStatus.loading,
);
