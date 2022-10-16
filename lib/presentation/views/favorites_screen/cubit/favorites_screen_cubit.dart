import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import '../../../../core/errors/failures.dart';
import '../../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../../locator.dart';

part 'favorites_screen_state.dart';
part 'favorites_screen_cubit.freezed.dart';

class FavoritesScreenCubit extends Cubit<FavoritesScreenState> {
  GlobalAuthCubit globalAuthCubit;
  GlobalUICubit globalUICubit;
  IProduceManagerRepository repository;

  FavoritesScreenCubit({
    required this.globalAuthCubit,
    required this.repository,
    required this.globalUICubit,
  }) : super(const FavoritesScreenState.loading([]));

  Future<void> getProduceFavorites() async {
    print("FavoritesScreenCubit: Loading");
    emit(FavoritesScreenState.loading(state.produceFavoritesList));

    await whenGAComplete(locator<GlobalAuthCubit>().stream).then((gaState) async {
      FarmhubUser user = globalAuthCubit.state.farmhubUser!;
      List<String> produceIdList = [];
      for (ProduceFavorite favorite in user.produceFavoritesList) {
        produceIdList.add(favorite.produceId);
      }

      final result = await repository.getProduceFavorites(user);

      result.fold(
        (f) {
          print("FavoritesScreenCubit: Error");
          emit(FavoritesScreenState.error(state.produceFavoritesList, f, farmhubUser: user));
        },
        (produceFavoritesList) {
          print("FavoritesScreenCubit: Complete");
          emit(FavoritesScreenState.complete(produceFavoritesList, farmhubUser: user));
        },
      );
    });
  }
}
