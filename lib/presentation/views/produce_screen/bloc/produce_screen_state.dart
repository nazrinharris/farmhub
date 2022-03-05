part of 'produce_screen_bloc.dart';

@freezed
class ProduceScreenState with _$ProduceScreenState {
  const factory ProduceScreenState.initial({
    required ProduceScreenProps props,
  }) = _PSSInitial;
}

@freezed
class ProduceScreenProps with _$ProduceScreenProps {
  const factory ProduceScreenProps({
    required TabController tabController,
    required int index,
  }) = _ProduceScreenProps;
}
