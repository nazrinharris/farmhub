part of 'search_screen_bloc.dart';

@freezed
class SearchScreenState with _$SearchScreenState {
  const factory SearchScreenState.initial(SearchScreenProps props) = SSSInitial;
  const factory SearchScreenState.loading(SearchScreenProps props) = SSSLoading;
  const factory SearchScreenState.loadingNextTenProduce(SearchScreenProps props) =
      SSSLoadingNextTenProduce;
  const factory SearchScreenState.completed(SearchScreenProps props) = SSSCompleted;
  const factory SearchScreenState.error(
      {required SearchScreenProps props, required Failure failure}) = SSSError;
}

@freezed
class SearchScreenProps with _$SearchScreenProps {
  const factory SearchScreenProps({
    required String query,
    required List<Produce> produceList,
  }) = _SearchScreenProps;
}
