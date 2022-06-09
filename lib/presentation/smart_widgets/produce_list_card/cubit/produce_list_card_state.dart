part of 'produce_list_card_cubit.dart';

@freezed
class ProduceListCardState with _$ProduceListCardState {
  const factory ProduceListCardState.initial({
    required ProduceListCardProps props,
  }) = PLCInitial;

  const factory ProduceListCardState.loading({
    required ProduceListCardProps props,
  }) = PLCLoading;

  const factory ProduceListCardState.addToFavoritesButton({
    required ProduceListCardProps props,
  }) = PLCAddToFavoritesButton;

  const factory ProduceListCardState.removeFromFavoritesButton({
    required ProduceListCardProps props,
  }) = PLCRemoveFromFavoritesButton;
}

@freezed
class ProduceListCardProps with _$ProduceListCardProps {
  const factory ProduceListCardProps({
    required FarmhubUser farmhubUser,
    required Produce produce,
  }) = _ProduceListCardProps;
}
