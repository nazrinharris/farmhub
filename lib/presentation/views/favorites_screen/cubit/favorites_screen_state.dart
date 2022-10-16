part of 'favorites_screen_cubit.dart';

@freezed
class FavoritesScreenState with _$FavoritesScreenState {
  const factory FavoritesScreenState.initial(List<Produce> produceFavoritesList) = FSInitial;
  const factory FavoritesScreenState.loading(List<Produce> produceFavoritesList) = FSLoading;
  const factory FavoritesScreenState.complete(List<Produce> produceFavoritesList) = FSComplete;
  const factory FavoritesScreenState.error(List<Produce> produceFavoritesList, Failure failure) =
      FSError;
}
