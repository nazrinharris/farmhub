part of 'farm_screen_cubit.dart';

@freezed
class FarmScreenState with _$FarmScreenState {
  const factory FarmScreenState.initial() = _Initial;

  const factory FarmScreenState.createFarmLoading() = CreateFarmLoading;
  const factory FarmScreenState.createFarmSuccess(Farm farm) = CreateFarmSuccess;
  const factory FarmScreenState.createFarmError(Failure failure) = CreateFarmError;
}
