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
        code: 'Price-fromMap',
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

class PriceSnippet {
  final String priceDate;
  final num price;

  PriceSnippet({required this.price, required this.priceDate});

  // static PriceSnippet fromMap(Map<String, dynamic>? map) {
  //   if (map == null) {
  //     throw UnexpectedException(
  //       code: 'PriceSnippet-fromMap',
  //       message: "Map is null.",
  //       stackTrace: StackTrace.current,
  //     );
  //   }
  //   return PriceSnippet(
  //     price: map[""],
  //     priceDate: priceDate,
  //   );
  // }
}
