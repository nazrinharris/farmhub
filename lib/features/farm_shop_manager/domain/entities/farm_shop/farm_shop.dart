import 'package:freezed_annotation/freezed_annotation.dart';

import '../address/address.dart';

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
