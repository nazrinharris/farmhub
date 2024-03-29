import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/repository/produce_manager_repository.dart';
import '../domain/entities/produce/produce.dart';

part 'produce_manager_event.dart';
part 'produce_manager_state.dart';
part 'produce_manager_bloc.freezed.dart';

class ProduceManagerBloc extends Bloc<ProduceManagerEvent, ProduceManagerState> {
  final IProduceManagerRepository repository;

  ProduceManagerBloc({required this.repository}) : super(const PMSInitial()) {
    on<PMEExecGetFirstTenProduce>(execGetFirstTenProduce);
    on<PMEExecCreateProduce>(execCreateNewProduce);
  }

  FutureOr<void> execGetFirstTenProduce(
    PMEExecGetFirstTenProduce event,
    Emitter<ProduceManagerState> emit,
  ) async {
    emit(const ProduceManagerState.getFirstTenProduceLoading());

    final failureOrList = await repository.getFirstTenProduce();

    emit(failureOrList.fold(
        (f) => ProduceManagerState.getFirstTenProduceError(
              code: f.code!,
              message: f.message!,
              stackTrace: f.stackTrace!,
            ),
        (list) => ProduceManagerState.getFirstTenProduceSuccess(produceList: list)));
  }

  FutureOr<void> execCreateNewProduce(
    PMEExecCreateProduce event,
    Emitter<ProduceManagerState> emit,
  ) async {
    emit(const ProduceManagerState.createNewProduceLoading());

    final failureOrProduce = await repository.createNewProduce(
      produceName: event.produceName,
      currentProducePrice: event.currentProducePrice,
    );

    emit(failureOrProduce.fold(
      (f) => ProduceManagerState.createNewProduceError(
        failure: f,
      ),
      (produce) => ProduceManagerState.createNewProduceSuccess(produce: produce),
    ));
  }
}
