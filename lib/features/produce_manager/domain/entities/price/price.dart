import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/exceptions.dart';

part 'price.freezed.dart';
part 'price.g.dart';

@freezed
class Price with _$Price {
  factory Price({
    required String priceId,
    required double currentPrice,
    required List<Map<String, dynamic>> editHistory,
    required String updateDate,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  static Price fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      throw UnexpectedException(
        code: 'Produce-fromMap',
        message: "Map is null.",
        stackTrace: StackTrace.current,
      );
    }
    return Price(
      priceId: map["priceId"],
      currentPrice: map["currentPrice"],
      editHistory: map["editHistory"],
      updateDate: map["updateDate"],
    );
  }
}
