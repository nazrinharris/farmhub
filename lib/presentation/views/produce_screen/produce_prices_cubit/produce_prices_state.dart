part of 'produce_prices_cubit.dart';

@freezed
class ProducePricesState with _$ProducePricesState {
  const factory ProducePricesState.initial(List<Price> pricesList) = PPSInitial;

  const factory ProducePricesState.firstTenPricesLoading(List<Price> pricesList) =
      PPSFirstTenPricesLoading;
  const factory ProducePricesState.firstTenPricesCompleted(List<Price> pricesList) =
      PPSFirstTenPricesCompleted;
  const factory ProducePricesState.nextTenPricesLoading(List<Price> pricesList) =
      PPSNextTenPricesLoading;
  const factory ProducePricesState.nextTenPricesCompleted(List<Price> pricesList) =
      PPSNextTenPricesCompleted;
  const factory ProducePricesState.pricesError(List<Price> pricesList, Failure failure) =
      PPSPricesError;
}
