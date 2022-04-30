// ignore_for_file: prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playground_state.dart';
part 'playground_cubit.freezed.dart';

class PlaygroundCubit extends Cubit<PlaygroundState> {
  final IProduceManagerRepository repository;

  PlaygroundCubit({required this.repository}) : super(PlaygroundState.initial());

  void createProduce({
    required String produceName,
    required num currentProducePrice,
  }) async {
    emit(const PlaygroundState.loading());

    print("Creating produce...");

    final failureOrProduce = await repository.createNewProduce(
      produceName: produceName,
      currentProducePrice: currentProducePrice,
    );

    failureOrProduce.fold(
      (f) {
        throw Exception("${f.message} with code ${f.code}");
      },
      (produce) {
        print("Produce Creation Complete");
        emit(PlaygroundState.createCompleted(produce));
      },
    );
  }

  void addNewPrice({
    required String produceId,
    required num currentPrice,
  }) async {
    emit(const PlaygroundState.loading());

    print("Adding new price to Produce with ID: $produceId");

    final failureOrNewPrice = await repository.addNewPrice(
      produceId: produceId,
      currentPrice: currentPrice,
    );

    failureOrNewPrice.fold(
      (f) {},
      (produce) {},
    );
  }
}
