import 'package:bloc/bloc.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import '../../../../features/produce_manager/data/repository/produce_manager_repository.dart';
import '../../../../features/produce_manager/domain/entities/produce/produce.dart';

part 'produce_list_card_state.dart';
part 'produce_list_card_cubit.freezed.dart';

class ProduceListCardCubit extends Cubit<ProduceListCardState> {
  final FarmhubUser farmhubUser;
  final Produce produce;
  final IProduceManagerRepository repository;
  final GlobalUICubit globalUICubit;

  ProduceListCardCubit({
    required this.farmhubUser,
    required this.produce,
    required this.repository,
    required this.globalUICubit,
  }) : super(ProduceListCardState.initial(
            props: ProduceListCardProps(farmhubUser: farmhubUser, produce: produce)));

  void cardStateChanges() {
    emit(state);
  }

  void setIfFavorite(bool isFavorite) {
    if (isFavorite) {
      emit(ProduceListCardState.removeFromFavoritesButton(props: state.props));
    } else {
      emit(ProduceListCardState.addToFavoritesButton(props: state.props));
    }
  }

  Future<void> addToFavorites(BuildContext context) async {
    emit(ProduceListCardState.loading(props: state.props));

    final result = await repository.addToFavorites(farmhubUser, produce.produceId);

    result.fold(
      (f) {
        showErrorDialog(context: context, failure: f);
        emit(ProduceListCardState.addToFavoritesButton(props: state.props));
      },
      (updatedFarmhubUser) {
        globalUICubit.setShouldRefreshFavorites(true);
        emit(ProduceListCardState.removeFromFavoritesButton(props: state.props));
      },
    );
  }

  Future<void> removeFromFavorites(BuildContext context) async {
    emit(ProduceListCardState.loading(props: state.props));

    final result = await repository.removeFromFavorites(farmhubUser, produce.produceId);

    result.fold(
      (f) {
        showErrorDialog(context: context, failure: f);
        emit(ProduceListCardState.removeFromFavoritesButton(props: state.props));
      },
      (updatedFarmhubUser) {
        globalUICubit.setShouldRefreshFavorites(true);
        emit(ProduceListCardState.addToFavoritesButton(props: state.props));
      },
    );
  }
}
