import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'farmhub_user.freezed.dart';
part 'farmhub_user.g.dart';

@freezed
class FarmhubUser with _$FarmhubUser {
  factory FarmhubUser({
    required String uid,
    required String email,
    required String username,
    required String createdAt,
    required List<String> produceFavoritesList,
  }) = _FarmhubUser;

  factory FarmhubUser.fromJson(Map<String, dynamic> json) => _$FarmhubUserFromJson(json);
}
