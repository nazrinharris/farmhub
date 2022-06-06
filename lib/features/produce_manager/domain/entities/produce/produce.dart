import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'produce.freezed.dart';
part 'produce.g.dart';

@freezed
class Produce with _$Produce {
  factory Produce({
    required String produceId,
    required String produceName,
    required String authorId,
    required Map<String, dynamic> currentProducePrice,
    required Map<String, dynamic> previousProducePrice,
    required Map<String, dynamic> weeklyPrices,
    required DateTime lastUpdateTimeStamp,
  }) = _Produce;

  factory Produce.fromJson(Map<String, dynamic> json) => _$ProduceFromJson(json);

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
      weeklyPrices: map['weeklyPrices'],
      authorId: map['authorId'],
      lastUpdateTimeStamp: lastUpdateTimeStamp,
    );
  }
}

@freezed
class ProduceFavorite with _$ProduceFavorite {
  factory ProduceFavorite({
    required String produceId,
    required DateTime dateAdded,
  }) = _ProduceFavorite;
}
