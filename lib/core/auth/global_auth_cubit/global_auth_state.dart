part of 'global_auth_cubit.dart';

@freezed
class GlobalAuthState with _$GlobalAuthState {
  const factory GlobalAuthState.initial({
    FarmhubUser? farmhubUser,
    bool? isAdmin,
  }) = Initial;

  const factory GlobalAuthState.loading() = Loading;
  const factory GlobalAuthState.complete({FarmhubUser? farmhubUser, bool? isAdmin}) = Complete;
  const factory GlobalAuthState.notLoggedIn() = NotLoggedIn;
}
