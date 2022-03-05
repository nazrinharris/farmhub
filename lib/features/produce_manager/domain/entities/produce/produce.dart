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
    required List<num> weeklyPrices,
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
    return Produce(
      produceId: map['produceId'],
      produceName: map['produceName'],
      currentProducePrice: map['currentProducePrice'],
      previousProducePrice: map['previousProducePrice'],
      weeklyPrices: List<num>.from(map['weeklyPrices']),
      authorId: map['authorId'],
    );
  }
}

/*

  Structure for [currentProducePrice]
  {
    "price" : 12.30
    "updateDate" : "<update-date>"
  }

  Structure for [previousProducePrice]
  {
    "price" : 12.30
    "updateDate" : "<update-date>"
  }

  Structure for [weeklyPrices]
  - [0] is the latest.

*/