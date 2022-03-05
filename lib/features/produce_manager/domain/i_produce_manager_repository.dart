import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/errors/failures.dart';
import 'entities/produce/produce.dart';

abstract class IProduceManagerRepository {
  FutureEither<Produce> getSpecificProduce({
    required String pid,
  });

  FutureEither<List<Produce>> getFirstTenProduce();

  FutureEither<List<Produce>> getNextTenProduce();

  FutureEither<Produce> createNewProduce({
    required String produceName,
    required num currentProducePrice,
  });

  FutureEither<List<Price>> getOneWeekPrices({
    required String pid,
  });
}
