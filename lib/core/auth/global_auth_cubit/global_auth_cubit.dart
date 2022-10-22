import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/data/repository/auth_repository.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'global_auth_state.dart';
part 'global_auth_cubit.freezed.dart';

class GlobalAuthCubit extends Cubit<GlobalAuthState> {
  final IAuthRepository repository;

  GlobalAuthCubit(this.repository) : super(const GlobalAuthState.initial());

  /// This method updates the [FarmhubUser] inside of this cubit. It does not in any way
  /// update the remote user, for that you should use [updateRemoteUser] from [auth_remote_datasource]
  void updateFarmhubUser(FarmhubUser? farmhubUser) {
    emit(state.copyWith(farmhubUser: farmhubUser));
  }

  void updateIsAdmin(bool? isAdmin) {
    emit(state.copyWith(isAdmin: isAdmin));
  }

  Future<void> updateGlobalAuthCubit() async {
    debugPrint("Updating Global Auth Cubit");
    final failureOrFarmhubUser = await repository.retrieveUserData();

    await failureOrFarmhubUser.fold(
      (f) {
        debugPrint("User is not logged in.");
        debugPrint(f.toString());
      },
      (farmhubUser) async {
        final failureOrIsAdmin = await repository.isAdmin(uid: farmhubUser.uid);

        failureOrIsAdmin.fold(
          (f) {
            debugPrint("Failed to check if user is admin");
            debugPrint(f.toString());
            emit(state.copyWith(farmhubUser: farmhubUser, isAdmin: null));
          },
          (isAdmin) {
            if (isAdmin) {
              emit(state.copyWith(
                farmhubUser: farmhubUser.copyWith(userType: UserType.admin),
                isAdmin: isAdmin,
              ));
            } else {
              emit(state.copyWith(
                farmhubUser: farmhubUser,
                isAdmin: isAdmin,
              ));
            }
          },
        );
      },
    );
  }
}
