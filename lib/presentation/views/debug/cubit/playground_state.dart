part of 'playground_cubit.dart';

@freezed
class PlaygroundState with _$PlaygroundState {
  const factory PlaygroundState.initial() = Initial;

  const factory PlaygroundState.loading() = Loading;

  const factory PlaygroundState.createCompleted(Produce produce) = CreateCompleted;
  const factory PlaygroundState.addPriceCompleted(Produce produce) = AddPriceCompleted;
}
