// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/data/repository/produce_manager_repository.dart';
import '../../../../features/produce_manager/domain/entities/produce/produce.dart';

part 'search_screen_event.dart';
part 'search_screen_state.dart';
part 'search_screen_bloc.freezed.dart';

class SearchScreenBloc extends Bloc<SearchScreenEvent, SearchScreenState> {
  final IProduceManagerRepository produceManagerRepository;

  SearchScreenBloc({
    required this.produceManagerRepository,
  }) : super(const SSSInitial(SearchScreenProps(query: "", produceList: []))) {
    on<_SSEStarted>(started);
    on<_SSEOnChanged>(onChanged);
    on<_SSEOnSubmitted>(onSubmitted);
    on<_SSEGetNextTenProduce>(getNextTenProduce);
  }

  FutureOr<void> started(
    _SSEStarted event,
    Emitter<SearchScreenState> emit,
  ) {
    emit(state);
  }

  FutureOr<void> onChanged(
    _SSEOnChanged event,
    Emitter<SearchScreenState> emit,
  ) async {
    emit(state);
  }

  FutureOr<void> onSubmitted(
    _SSEOnSubmitted event,
    Emitter<SearchScreenState> emit,
  ) async {
    // Indicate Loading
    emit(SearchScreenState.loading(state.props));

    // Check if empty
    if (event.query == "" || event.query.isEmpty) {
      emit(SearchScreenState.initial(state.props.copyWith(produceList: [])));
    } else {
      // Start query
      final failureOrProduceList = await produceManagerRepository.searchProduce(event.query);

      failureOrProduceList.fold(
        (f) => emit(SearchScreenState.error(props: state.props, failure: f)),
        (produceList) {
          emit(SearchScreenState.completed(state.props.copyWith(
            produceList: produceList,
            query: event.query,
          )));
          int index = 1;
          for (Produce produce in produceList) {
            debugPrint("$index ${produce.produceName}   ${produce.produceId}\n");
            index++;
          }
        },
      );
    }
  }

  FutureOr<void> getNextTenProduce(
    _SSEGetNextTenProduce event,
    Emitter<SearchScreenState> emit,
  ) async {
    emit(SearchScreenState.loadingNextTenProduce(state.props));

    final failureOrNewProduceList = await produceManagerRepository.getNextTenSearchProduce(
      state.props.produceList,
      state.props.query,
    );

    failureOrNewProduceList.fold(
      (f) {
        emit(SearchScreenState.error(props: state.props, failure: f));
        debugPrint(f.code);
        debugPrintStack(stackTrace: f.stackTrace);
      },
      (produceList) {
        emit(SearchScreenState.completed(state.props.copyWith(produceList: produceList)));
        int index = 1;
        for (Produce produce in produceList) {
          debugPrint("$index ${produce.produceName}   ${produce.produceId}\n");
          index++;
        }
      },
    );
  }
}
