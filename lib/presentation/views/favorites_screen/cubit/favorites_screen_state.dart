part of 'favorites_screen_cubit.dart';

@freezed
class FavoritesScreenState with _$FavoritesScreenState {
  const factory FavoritesScreenState.initial(
    List<Produce> produceFavoritesList, {
    FarmhubUser? farmhubUser,
  }) = FSInitial;
  const factory FavoritesScreenState.loading(
    List<Produce> produceFavoritesList, {
    FarmhubUser? farmhubUser,
  }) = FSLoading;
  const factory FavoritesScreenState.complete(
    List<Produce> produceFavoritesList, {
    FarmhubUser? farmhubUser,
  }) = FSComplete;
  const factory FavoritesScreenState.error(
    List<Produce> produceFavoritesList,
    Failure failure, {
    FarmhubUser? farmhubUser,
  }) = FSError;
}
