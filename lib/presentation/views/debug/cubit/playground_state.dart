part of 'playground_cubit.dart';

@freezed
class PlaygroundState with _$PlaygroundState {
  const factory PlaygroundState.initial() = Initial;

  const factory PlaygroundState.loading() = Loading;

  const factory PlaygroundState.createCompleted(Produce produce) = CreateCompleted;
  const factory PlaygroundState.addPriceCompleted(Produce produce) = AddPriceCompleted;
  const factory PlaygroundState.getPricesCompleted(List<PriceSnippet> pricesList) =
      GetPricesCompleted;

  const factory PlaygroundState.error(Failure failure) = Error;
}
