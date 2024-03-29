// ignore_for_file: unused_element, invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/features/produce_manager/data/repository/produce_manager_helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'produce.freezed.dart';
part 'produce.g.dart';

@freezed
class Produce with _$Produce {
  const Produce._();

  factory Produce({
    required String produceId,
    required String produceName,
    required String authorId,
    required Map<String, dynamic> currentProducePrice,
    required Map<String, dynamic> previousProducePrice,
    required Map<String, dynamic> weeklyPrices,
    required DateTime lastUpdateTimeStamp,
  }) = _Produce;

  /// The difference between [fromLocalMap] and [fromMap] is simply that the JSON from local storage
  /// is a little different than the ones from [Firebase].
  ///
  /// More specifically, the [lastUpdateTimeStamp] JSON stored in [Firebase] is of type [Timestamp],
  /// whilst the one stored in local is of type [DateTime].
  static Produce fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      throw UnexpectedException(
        code: 'Produce-fromMap',
        message: "Map is null.",
        stackTrace: StackTrace.current,
      );
    }

    DateTime lastUpdateTimeStamp = (map["lastUpdateTimeStamp"] as Timestamp).toDate();

    return Produce(
      produceId: map['produceId'],
      produceName: map['produceName'],
      currentProducePrice: map['currentProducePrice'],
      previousProducePrice: map['previousProducePrice'],
      weeklyPrices: filterPricesOlderThanOneWeek(map["weeklyPrices"]),
      authorId: map['authorId'],
      lastUpdateTimeStamp: lastUpdateTimeStamp,
    );
  }

  /// The difference between [fromLocalMap] and [fromMap] is simply that the JSON from local storage
  /// is a little different than the ones from [Firebase].
  ///
  /// More specifically, the [lastUpdateTimeStamp] JSON stored in [Firebase] is of type [Timestamp],
  /// whilst the one stored in local is of type [DateTime].
  static Produce fromLocalMap(Map<String, dynamic>? map) {
    if (map == null) {
      throw UnexpectedException(
        code: 'Produce-fromMap',
        message: "Map is null.",
        stackTrace: StackTrace.current,
      );
    }

    DateTime lastUpdateTimeStamp = DateTime.parse(map["lastUpdateTimeStamp"]);

    return Produce(
      produceId: map['produceId'],
      produceName: map['produceName'],
      currentProducePrice: map['currentProducePrice'],
      previousProducePrice: map['previousProducePrice'],
      weeklyPrices: filterPricesOlderThanOneWeek(map["weeklyPrices"]),
      authorId: map['authorId'],
      lastUpdateTimeStamp: lastUpdateTimeStamp,
    );
  }

  static Map<String, dynamic> toMap(Produce produce) {
    return {
      "produceId": produce.produceId,
      "produceName": produce.produceName,
      "currentProducePrice": produce.currentProducePrice,
      "previousProducePrice": produce.previousProducePrice,
      "weeklyPrices": produce.weeklyPrices,
      "authorId": produce.authorId,
      "lastUpdateTimeStamp": produce.lastUpdateTimeStamp.toString(),
    };
  }
}

@freezed
class ProduceFavorite with _$ProduceFavorite {
  @JsonSerializable(explicitToJson: true)
  factory ProduceFavorite({
    required String produceId,
    required DateTime dateAdded,
  }) = _ProduceFavorite;

  factory ProduceFavorite.fromJson(Map<String, dynamic> json) => _$ProduceFavoriteFromJson(json);
}
