import 'package:freezed_annotation/freezed_annotation.dart';
part 'address.freezed.dart';
part 'address.g.dart';

@Freezed()
class Address with _$Address {
  @JsonSerializable(explicitToJson: true)
  const factory Address({required String rawAddress}) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
