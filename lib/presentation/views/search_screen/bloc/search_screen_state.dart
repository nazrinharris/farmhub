part of 'search_screen_bloc.dart';

@freezed
class SearchScreenState with _$SearchScreenState {
  const factory SearchScreenState.initial() = SSSInitial;
  const factory SearchScreenState.loading() = SSSLoading;
  const factory SearchScreenState.completed(List<Produce> produceList) = SSSCompleted;
  const factory SearchScreenState.error(Failure failure) = SSSError;
}

@freezed
class SearchScreenProps with _$SearchScreenProps {
  const factory SearchScreenProps({
    required String query,
  }) = _SearchScreenProps;
}
