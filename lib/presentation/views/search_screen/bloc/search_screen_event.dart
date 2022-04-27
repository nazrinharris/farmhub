part of 'search_screen_bloc.dart';

@freezed
class SearchScreenEvent with _$SearchScreenEvent {
  const factory SearchScreenEvent.started() = _SSEStarted;

  const factory SearchScreenEvent.onChanged({
    required String query,
  }) = _SSEOnChanged;
  const factory SearchScreenEvent.onSubmitted({
    required String query,
  }) = _SSEOnSubmitted;
  const factory SearchScreenEvent.getNextTenProduce() = _SSEGetNextTenProduce;
}
