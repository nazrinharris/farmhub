import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/data/repository/auth_repository.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'global_auth_state.dart';
part 'global_auth_cubit.freezed.dart';

/// [GlobalAuthCubit] simply stores the current [FarmhubUser] and whether it is an admin.
/// A kind of local widget, so to say.
///
/// If there is a need for methods which directly affects the user in the remote database,
/// consider adding it to the [Auth] feature, following the datasource-repository architecture.
class GlobalAuthCubit extends Cubit<GlobalAuthState> {
  final IAuthRepository repository;

  GlobalAuthCubit(this.repository) : super(const GlobalAuthState.initial());

  /// This method updates the [FarmhubUser] inside of this cubit. It does not in any way
  /// update the remote user, for that you should use [updateRemoteUser] from [auth_remote_datasource]
  void updateFarmhubUser(FarmhubUser? farmhubUser) {
    emit(GlobalAuthState.complete(farmhubUser: farmhubUser));
  }

  void updateIsAdmin(bool? isAdmin) {
    print("Update isAdmin called");
    emit(GlobalAuthState.complete(isAdmin: isAdmin));
  }

  Future<void> updateGlobalAuthCubit() async {
    print("GACubit: GALoading");
    emit(GlobalAuthState.loading(
      farmhubUser: state.farmhubUser,
      isAdmin: state.isAdmin,
    ));
    final failureOrFarmhubUser = await repository.retrieveUserData();

    await failureOrFarmhubUser.fold(
      (f) {
        print("GACubit: GANotLoggedIn");
        emit(GlobalAuthState.notLoggedIn());
        debugPrint(f.toString());
      },
      (farmhubUser) async {
        final failureOrIsAdmin = await repository.isAdmin(uid: farmhubUser.uid);

        failureOrIsAdmin.fold(
          (f) {
            print("GACubit: Failed to check if user is admin");
            print(f);
            emit(GlobalAuthState.complete(farmhubUser: farmhubUser, isAdmin: null));
          },
          (isAdmin) {
            print("GACubit: GAComplete");
            if (isAdmin) {
              emit(GlobalAuthState.complete(
                farmhubUser: farmhubUser.copyWith(userType: UserType.admin),
                isAdmin: isAdmin,
              ));
            } else {
              emit(GlobalAuthState.complete(
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

Future<GlobalAuthState> whenGAComplete(Stream<GlobalAuthState> stream) {
  return stream.firstWhere((state) {
    return state is GAComplete;
  });
}
