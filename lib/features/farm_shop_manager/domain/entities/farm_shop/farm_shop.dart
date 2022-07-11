// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../address/address.dart';

part 'farm_shop.freezed.dart';
part 'farm_shop.g.dart';

@Freezed()
class Farm with _$Farm {
  @JsonSerializable(explicitToJson: true)
  const factory Farm({
    required String fid,
    required String farmName,
    required Address address,
  }) = _Farm;

  factory Farm.fromJson(Map<String, dynamic> json) => _$FarmFromJson(json);
}

@Freezed()
class Shop with _$Shop {
  @JsonSerializable(explicitToJson: true)
  const factory Shop({
    required String sid,
    required String shopName,
    required Address address,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}
