import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/produce/produce.dart';
import 'dart:convert';

abstract class IProduceManagerLocalDatasource {
  Future<Unit> storeProduceList(List<Produce> produceList);
  Future<List<Produce>> retrieveProduceList();

  Future<Unit> storeProduceFavorites(List<Produce> produceFavoritesList);
  Future<List<Produce>> retrieveProduceFavorites();
}

class ProduceManagerLocalDatasource implements IProduceManagerLocalDatasource {
  @override
  Future<Unit> storeProduceList(List<Produce> produceList) async {
    final prefs = await SharedPreferences.getInstance();

    List<String> encodedProduceList = [];
    for (Produce produce in produceList) {
      String encoded = jsonEncode(Produce.toMap(produce));
      encodedProduceList.add(encoded);
    }

    prefs.setStringList("produceList", encodedProduceList);

    return unit;
  }

  @override
  Future<List<Produce>> retrieveProduceList() async {
    final prefs = await SharedPreferences.getInstance();

    final encodedProduceList = prefs.getStringList("produceList");
    final List<Produce> produceList = [];

    for (String encodedProduce in encodedProduceList!) {
      final decoded = jsonDecode(encodedProduce) as Map<String, dynamic>;
      final produce = Produce.fromLocalMap(decoded);

      produceList.add(produce);
    }

    return produceList;
  }

  @override
  Future<Unit> storeProduceFavorites(List<Produce> produceFavorites) async {
    final prefs = await SharedPreferences.getInstance();

    List<String> encodedProduceList = [];
    for (Produce produce in produceFavorites) {
      String encoded = jsonEncode(Produce.toMap(produce));
      encodedProduceList.add(encoded);
    }

    prefs.setStringList("produceFavorites", encodedProduceList);

    return unit;
  }

  @override
  Future<List<Produce>> retrieveProduceFavorites() async {
    final prefs = await SharedPreferences.getInstance();

    final encodedProduceList = prefs.getStringList("produceFavorites");
    final List<Produce> produceList = [];

    for (String encodedProduce in encodedProduceList!) {
      final decoded = jsonDecode(encodedProduce) as Map<String, dynamic>;
      final produce = Produce.fromLocalMap(decoded);

      produceList.add(produce);
    }

    return produceList;
  }
}
