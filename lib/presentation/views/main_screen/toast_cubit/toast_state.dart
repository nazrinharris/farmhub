part of 'toast_cubit.dart';

@freezed
class ToastState with _$ToastState {
  const factory ToastState.initial() = Initial;
  const factory ToastState.show({
    required String title,
    required String message,
  }) = Show;
}
