import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_auth_state.dart';
part 'global_auth_cubit.freezed.dart';

class GlobalAuthCubit extends Cubit<GlobalAuthState> {
  GlobalAuthCubit() : super(const GlobalAuthState.initial());

  void updateFarmhubUser(FarmhubUser? farmhubUser) {
    emit(state.copyWith(farmhubUser: farmhubUser));
  }

  void updateIsAdmin(bool? isAdmin) {
    emit(state.copyWith(isAdmin: isAdmin));
  }
}
