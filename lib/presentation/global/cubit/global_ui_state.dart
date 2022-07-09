part of 'global_ui_cubit.dart';

@freezed
class GlobalUIState with _$GlobalUIState {
  const factory GlobalUIState.initial(GlobalUIProps props) = GInitial;

  const factory GlobalUIState.shouldRefreshMainChanged(GlobalUIProps props) =
      GShouldRefreshMainChanged;
}

@freezed
class GlobalUIProps with _$GlobalUIProps {
  const factory GlobalUIProps({
    required bool shouldRefreshMain,
    required bool shouldRefreshProduce,
    required bool shouldRefreshPrice,
    required bool shouldRefreshFavorites,
    required bool shouldRefreshProfile,
    EdgeInsets? safeAreaPadding,
  }) = _GlobalUIProps;
}
