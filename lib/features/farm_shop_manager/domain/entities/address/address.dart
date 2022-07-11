import 'package:freezed_annotation/freezed_annotation.dart';
part 'address.freezed.dart';

@Freezed()
class Address with _$Address {
  const factory Address() = _Address;
}
