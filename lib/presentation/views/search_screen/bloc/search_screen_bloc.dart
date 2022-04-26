import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/domain/entities/produce/produce.dart';

part 'search_screen_event.dart';
part 'search_screen_state.dart';
part 'search_screen_bloc.freezed.dart';

class SearchScreenBloc extends Bloc<SearchScreenEvent, SearchScreenState> {
  final IProduceManagerRepository produceManagerRepository;

  SearchScreenBloc({
    required this.produceManagerRepository,
  }) : super(const SSSInitial()) {
    on<_SSEStarted>(started);
    on<_SSEOnChanged>(onChanged);
    on<_SSEOnSubmitted>(onSubmitted);
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
    emit(const SearchScreenState.loading());

    // Check if empty
    if (event.query == "" || event.query.isEmpty) {
      emit(const SearchScreenState.initial());
    } else {
      // Start query
      final failureOrProduceList = await produceManagerRepository.searchProduce(event.query);

      failureOrProduceList.fold(
        (f) => emit(SearchScreenState.error(f)),
        (produceList) => emit(SearchScreenState.completed(produceList)),
      );
    }
  }
}
