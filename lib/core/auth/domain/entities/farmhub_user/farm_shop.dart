import 'package:farmhub/core/auth/domain/entities/address/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm_shop.freezed.dart';

@Freezed()
class Farm with _$Farm {
  const factory Farm({
    required String fid,
    required String farmName,
    required Address address,
  }) = _Farm;
}

@Freezed()
class Shop with _$Shop {
  const factory Shop({
    required String sid,
    required String shopName,
    required Address address,
  }) = _Shop;
}
