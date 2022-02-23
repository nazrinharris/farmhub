import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entities/produce/produce.dart';
import '../domain/i_produce_manager_repository.dart';

part 'produce_manager_event.dart';
part 'produce_manager_state.dart';
part 'produce_manager_bloc.freezed.dart';

class ProduceManagerBloc extends Bloc<ProduceManagerEvent, ProduceManagerState> {
  final IProduceManagerRepository repository;

  ProduceManagerBloc({required this.repository}) : super(const PMSInitial()) {
    on<_PMEExecGetFirstTenProduce>(execGetFirstTenProduce);
  }

  FutureOr<void> execGetFirstTenProduce(
    _PMEExecGetFirstTenProduce event,
    Emitter<ProduceManagerState> emit,
  ) async {
    emit(const ProduceManagerState.getFirstTenProduceLoading());

    final failureOrList = await repository.getFirstTenProduce();

    emit(failureOrList.fold(
        (f) => ProduceManagerState.getFirstTenProduceError(code: f.code!, message: f.message!),
        (list) => ProduceManagerState.getFirstTenProduceSuccess(produceList: list)));
  }
}
