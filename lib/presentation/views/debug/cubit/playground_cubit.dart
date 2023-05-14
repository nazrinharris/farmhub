import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/data/repository/produce_manager_repository.dart';
import '../../../../features/produce_manager/domain/entities/price/price.dart';
import '../../../../features/produce_manager/data/repository/produce_manager_helpers.dart';

part 'playground_state.dart';
part 'playground_cubit.freezed.dart';

class PlaygroundCubit extends Cubit<PlaygroundState> {
  final IProduceManagerRepository repository;
  final FirebaseFirestore firebaseFirestore;

  PlaygroundCubit({
    required this.repository,
    required this.firebaseFirestore,
  }) : super(const PlaygroundState.initial());

  void updateFarmId() async {
    await firebaseFirestore
        .collection('users')
        .doc("9K8BXevqrCd2qrTe50NVzLs9bRR2")
        .collection('userFarms')
        .doc("EEgBmwkB1E461CxncqpY")
        .update({
      "farmId": "EEgBmwkB1E461CxncqpY",
    });
  }

  void createProduce({
    required String produceName,
    required num currentProducePrice,
  }) async {
    return;
    // emit(const PlaygroundState.loading());

    // print("Creating produce...");

    // final failureOrProduce = await repository.createNewProduce(
    //   produceName: produceName,
    //   currentProducePrice: currentProducePrice,
    // );

    // failureOrProduce.fold(
    //   (f) {
    //     throw Exception("${f.message} with code ${f.code}");
    //   },
    //   (produce) {
    //     print("Produce Creation Complete");
    //     emit(PlaygroundState.createCompleted(produce));
    //   },
    // );
  }

  void addNewPrice({
    required String produceId,
    required num currentPrice,
  }) async {
    return;
    // emit(const PlaygroundState.loading());

    // print("Adding new price to Produce with ID: $produceId");

    // final failureOrNewPrice = await repository.addNewPrice(
    //   produceId: produceId,
    //   currentPrice: currentPrice,
    // );

    // failureOrNewPrice.fold(
    //   (f) {
    //     emit(PlaygroundState.error(f));
    //   },
    //   (produce) {},
    // );
  }

  void debugMethod({
    required String produceId,
  }) async {
    return;
    // emit(const PlaygroundState.loading());

    // print("Adding new price to Produce with ID: $produceId");

    // final failureOrNewPrice = await repository.debugMethod(produceId);
  }

  void getTwoWeeksPrices({
    required String produceId,
  }) async {
    emit(const PlaygroundState.loading());

    debugPrint("Retrieving prices for Produce with ID: $produceId");

    final failureOrPricesList = await repository.getAggregatePrices(produceId);

    failureOrPricesList.fold(
      (f) {
        debugPrint(f.toString());
      },
      (r) {
        List<PriceSnippet> twoWeeksPricesList = pricesToRanged(r, rangeType: RangeType.twoW);

        emit(PlaygroundState.getPricesCompleted(r));
        debugPrint("Two Weeks Sorted Prices");

        for (PriceSnippet price in twoWeeksPricesList) {
          debugPrint(price.toString());
        }
      },
    );
  }

  void createMorePrices({
    required int pricesAmount,
    required String produceId,
  }) async {
    return;
    // emit(const PlaygroundState.loading());

    // final List<PriceSnippet> createdPricesList = [];
    // final Random random = Random();

    // for (int i = 0; i < pricesAmount; i++) {
    //   final String chosenDate = DateFormat("dd-MM-yyyy").format(clock.daysFromNow(i));
    //   int randomPrice = random.nextInt(20) + 20;

    //   createdPricesList.add(PriceSnippet(price: randomPrice, priceDate: chosenDate));

    //   //! This code will write to the database! Be careful!
    //   final failureOrAddPrice = await repository.addNewPrice(
    //     produceId: produceId,
    //     currentPrice: randomPrice,
    //     daysFromNow: i,
    //   );
    // }
  }

  void retrieveProduce({
    required String produceId,
  }) async {
    return;
    // emit(const PlaygroundState.loading());

    // final produceDoc = await firebaseFirestore.collection('produce').doc(produceId).get();

    // final Produce produce = Produce.fromMap(produceDoc.data());

    // print(produce);
  }

  void getPrice({
    required String produceId,
    required String priceId,
  }) async {
    return;
    // print("Get Price Started");
    // emit(const PlaygroundState.loading());

    // final priceDoc = await firebaseFirestore
    //     .collection('produce')
    //     .doc(produceId)
    //     .collection('prices')
    //     .doc(priceId)
    //     .get()
    //     .then((doc) => doc.data());

    // final Price price = Price.fromMap(priceDoc);

    // print(price);
  }

  void deletePriceFromAggregate({
    required String produceId,
    required String chosenDate,
    required String chosenYear,
  }) async {
    return;

    // await firebaseFirestore
    //     .collection('produce')
    //     .doc(produceId)
    //     .collection('aggregatePrices')
    //     .doc('aggregatePrices$chosenYear')
    //     .update({"prices-map.$chosenDate": FieldValue.delete()});
  }
}
