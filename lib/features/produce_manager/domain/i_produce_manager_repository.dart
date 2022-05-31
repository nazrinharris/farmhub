import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/errors/failures.dart';
import 'entities/produce/produce.dart';

abstract class IProduceManagerRepository {
  FutureEither<Produce> getProduce({required String pid});
  FutureEither<List<Produce>> getFirstTenProduce();
  FutureEither<List<Produce>> getNextTenProduce(List<Produce> lastProduceList);
  FutureEither<List<Produce>> searchProduce(String query);
  FutureEither<List<Produce>> getNextTenSearchProduce(List<Produce> lastProduceList, String query);

  FutureEither<List<Produce>> getProduceAsList(List<String> produceIdList);

  FutureEither<Price> getPrice(String produceId, String priceId);
  FutureEither<Price> editSubPrice(
      String produceId, String priceId, num newPrice, String subPriceDate);
  FutureEither<List<PriceSnippet>> getAggregatePrices(String produceId);
  FutureEither<List<Price>> getFirstTenPrices(String produceId);
  FutureEither<List<Price>> getNextTenPrices(List<Price> lastPriceList, String produceId);
  FutureEither<bool> deleteSubPrice({
    required String produceId,
    required String priceId,
    required String subPriceDate,
  });

  FutureEither<Produce> createNewProduce({
    required String produceName,
    required num currentProducePrice,
  });
  FutureEither<Unit> editProduce(String produceId, String newProduceName);
  FutureEither<Unit> deleteProduce(String produceId);

  FutureEither<Produce> addNewPrice({
    required String produceId,
    required num currentPrice,
    num? daysFromNow,
  });

  FutureEither<void>? debugMethod(String produceId);
}
