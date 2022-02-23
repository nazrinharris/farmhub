import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/errors/failures.dart';
import 'entities/produce/produce.dart';

abstract class IProduceManagerRepository {
  FutureEither<Produce> getSpecificProduce({
    required String pid,
  });

  FutureEither<List<Produce>> getFirstTenProduce();

  FutureEither<List<Produce>> getNextTenProduce();
}
