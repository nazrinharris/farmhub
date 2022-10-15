part of 'global_auth_cubit.dart';

@freezed
class GlobalAuthState with _$GlobalAuthState {
  const factory GlobalAuthState.initial({FarmhubUser? farmhubUser, bool? isAdmin}) = Initial;

  const factory GlobalAuthState.loading({FarmhubUser? farmhubUser, bool? isAdmin}) = GALoading;
  const factory GlobalAuthState.complete({FarmhubUser? farmhubUser, bool? isAdmin}) = GAComplete;
  const factory GlobalAuthState.notLoggedIn({FarmhubUser? farmhubUser, bool? isAdmin}) =
      GANotLoggedIn;
}
