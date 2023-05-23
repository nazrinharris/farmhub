import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'toast_state.dart';
part 'toast_cubit.freezed.dart';

class ToastCubit extends Cubit<ToastState> {
  ToastCubit() : super(const ToastState.initial());

    void showToast(String message) {
    emit(ToastState.show(title: "Uh oh, something went wrong.", message: message));
    emit(const ToastState.initial());
  }
}
