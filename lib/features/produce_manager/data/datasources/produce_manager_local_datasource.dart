import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/produce/produce.dart';
import 'dart:convert';

abstract class IProduceManagerLocalDatasource {
  Future<Unit> storeProduceList(List<Produce> produceList);
  Future<List<Produce>> retrieveProduceList();

  Future<Unit> storeProduceFavorites();
  Future<List<Produce>> retrieveProduceFavorites(List<Produce> produceFavoritesList);
}

class ProduceManagerLocalDatasource implements IProduceManagerLocalDatasource {
  @override
  Future<Unit> storeProduceList(List<Produce> produceList) {
    final prefs = SharedPreferences.getInstance();

    List<String> produceListMap = [];
    for (Produce produce in produceList) {
      //String encoded = jsonEncode()
    }

    throw UnimplementedError();
  }

  @override
  Future<List<Produce>> retrieveProduceList() {
    // TODO: implement retrieveProduceList
    throw UnimplementedError();
  }

  @override
  Future<Unit> storeProduceFavorites() {
    // TODO: implement storeProduceFavorites
    throw UnimplementedError();
  }

  @override
  Future<List<Produce>> retrieveProduceFavorites(List<Produce> produceFavoritesList) {
    final prefs = SharedPreferences.getInstance();

    throw UnimplementedError();
  }
}
