import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../errors/exceptions.dart';

part 'farmhub_user.freezed.dart';

@freezed
class FarmhubUser with _$FarmhubUser {
  factory FarmhubUser({
    required String uid,
    required String email,
    required String username,
    required String createdAt,
    required List<ProduceFavorite> produceFavoritesList,
  }) = _FarmhubUser;

  static FarmhubUser fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      throw UnexpectedException(
        code: 'Produce-fromMap',
        message: "Map is null.",
        stackTrace: StackTrace.current,
      );
    }

    final Map<String, dynamic> produceFavoritesMap = map["produceFavoritesMap"];
    final List<ProduceFavorite> produceFavoritesList = [];

    produceFavoritesMap.forEach((key, value) {
      produceFavoritesList.add(ProduceFavorite(produceId: key, dateAdded: value));
    });

    return FarmhubUser(
      uid: map["uid"],
      email: map["email"],
      username: map["username"],
      createdAt: map["createdAt"],
      produceFavoritesList: produceFavoritesList,
    );
  }

  static Map<String, dynamic> toMap(FarmhubUser user) {
    final produceFavoritesMap = {};

    for (ProduceFavorite produceFavorite in user.produceFavoritesList) {
      produceFavoritesMap[produceFavorite.produceId] = produceFavorite.dateAdded;
    }

    return {
      "createdAt": user.createdAt,
      "email": user.email,
      "produceFavoritesMap": produceFavoritesMap,
      "uid": user.uid,
      "username": user.username,
    };
  }
}
