part of 'global_auth_cubit.dart';

@freezed
class GlobalAuthState with _$GlobalAuthState {
  const factory GlobalAuthState.initial({
    FarmhubUser? farmhubUser,
    bool? isAdmin,
  }) = _Initial;
}
