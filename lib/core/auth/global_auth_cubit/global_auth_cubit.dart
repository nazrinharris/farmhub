import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_auth_state.dart';
part 'global_auth_cubit.freezed.dart';

class GlobalAuthCubit extends Cubit<GlobalAuthState> {
  final IAuthRepository repository;

  GlobalAuthCubit(this.repository) : super(const GlobalAuthState.initial());

  void updateFarmhubUser(FarmhubUser? farmhubUser) {
    emit(state.copyWith(farmhubUser: farmhubUser));
  }

  void updateIsAdmin(bool? isAdmin) {
    emit(state.copyWith(isAdmin: isAdmin));
  }

  void updateGlobalAuthCubit() async {
    final failureOrFarmhubUser = await repository.retrieveUserData();

    await failureOrFarmhubUser.fold(
      (l) {
        print("User is not logged in.");
        emit(state.copyWith(farmhubUser: null, isAdmin: null));
      },
      (farmhubUser) async {
        final failureOrIsAdmin = await repository.isAdmin(uid: farmhubUser.uid);

        failureOrIsAdmin.fold(
          (f) {
            print("Failed to check if user is admin");
            print(f);
            emit(state.copyWith(farmhubUser: farmhubUser, isAdmin: null));
          },
          (isAdmin) {
            emit(state.copyWith(farmhubUser: farmhubUser, isAdmin: isAdmin));
          },
        );
      },
    );
  }
}
