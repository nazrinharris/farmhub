// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:clock/clock.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../features/produce_manager/domain/entities/price/price.dart';
import '../../../../features/produce_manager/domain/helpers.dart';

part 'playground_state.dart';
part 'playground_cubit.freezed.dart';

class PlaygroundCubit extends Cubit<PlaygroundState> {
  final IProduceManagerRepository repository;
  final FirebaseFirestore firebaseFirestore;

  PlaygroundCubit({
    required this.repository,
    required this.firebaseFirestore,
  }) : super(PlaygroundState.initial());

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
      (f) {
        emit(PlaygroundState.error(f));
      },
      (produce) {},
    );
  }

  void debugMethod({
    required String produceId,
  }) async {
    emit(const PlaygroundState.loading());

    print("Adding new price to Produce with ID: $produceId");

    final failureOrNewPrice = await repository.debugMethod(produceId);
  }

  void getTwoWeeksPrices({
    required String produceId,
  }) async {
    emit(const PlaygroundState.loading());

    print("Retrieving prices for Produce with ID: $produceId");

    final failureOrPricesList = await repository.getAggregatePrices(produceId);

    failureOrPricesList.fold(
      (f) {
        print(f);
      },
      (r) {
        List<PriceSnippet> twoWeeksPricesList = pricesToRanged(r, rangeType: RangeType.twoW);
        List<PriceSnippet> oneMonthPricesList = pricesToRanged(r, rangeType: RangeType.twoW);

        emit(PlaygroundState.getPricesCompleted(r));
        print("Two Weeks Sorted Prices");

        for (PriceSnippet price in twoWeeksPricesList) {
          print(price);
        }
      },
    );
  }

  void createMorePrices({
    required int pricesAmount,
    required String produceId,
  }) async {
    emit(const PlaygroundState.loading());

    final List<PriceSnippet> createdPricesList = [];
    final Random random = Random();

    for (int i = 0; i < pricesAmount; i++) {
      final String chosenDate = DateFormat("dd-MM-yyyy").format(clock.daysFromNow(i));
      int randomPrice = random.nextInt(20) + 20;

      createdPricesList.add(PriceSnippet(price: randomPrice, priceDate: chosenDate));

      //! This code will write to the database! Be careful!
      final failureOrAddPrice = await repository.addNewPrice(
        produceId: produceId,
        currentPrice: randomPrice,
        daysFromNow: i,
      );
    }
  }
}
