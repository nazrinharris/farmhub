import 'package:bloc/bloc.dart';

import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_screen_state.dart';
part 'profile_screen_cubit.freezed.dart';

class ProfileScreenCubit extends Cubit<ProfileScreenState> {
  final GlobalAuthCubit globalAuthCubit;

  ProfileScreenCubit(this.globalAuthCubit) : super(ProfileScreenState.initial());

  Future<void> refresh() async {
    await globalAuthCubit.updateGlobalAuthCubit();
  }
}
