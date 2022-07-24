import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/domain/entities/price/price.dart';
import '../../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../../features/produce_manager/data/repository/produce_manager_helpers.dart';
import '../../../smart_widgets/produce_dialogs/app_dialogs.dart';

part 'produce_aggregate_state.dart';
part 'produce_aggregate_cubit.freezed.dart';

class ProduceAggregateCubit extends Cubit<ProduceAggregateState> {
  final TabController tabController;
  final IProduceManagerRepository repository;
  final Produce produce;
  final FarmhubUser farmhubUser;
  final GlobalUICubit globalUICubit;
  final bool isFavorite;

  ProduceAggregateCubit({
    required this.tabController,
    required this.repository,
    required this.produce,
    required this.farmhubUser,
    required this.globalUICubit,
    required this.isFavorite,
  }) : super(ProduceAggregateState.initial(
            props: ProduceAggregateProps(
          tabController: tabController,
          index: tabController.index,
          produce: produce,
          farmhubUser: farmhubUser,
          isProduceFavorite: isFavorite,
        )));

  /// List of index correspondent
  /// [0, 1W] [1, 2W] [2, 1M] [3, 2M] [4, 6M] [5, 1Y]
  void tabChanged() {
    if (tabController.indexIsChanging) {
      emit(state.copyWith(props: state.props.copyWith(index: tabController.index)));
    }
  }

  Future<void> getAggregatePricesAndProduce(String produceId) async {
    // Indicate Loading
    emit(ProduceAggregateState.loading(props: state.props));

    // Retrieve produce
    final failureOrProduce = await repository.getProduce(pid: produceId);
    Produce? produce;

    failureOrProduce.fold(
      (f) {
        emit(ProduceAggregateState.error(props: state.props, failure: f));
        produce = null;
      },
      (r) {
        produce = r;
      },
    );

    // Begin retrieval of [aggregatePrices]
    final failureOrAggregatePrices = await repository.getAggregatePrices(produceId);

    failureOrAggregatePrices.fold(
      (f) {
        emit(ProduceAggregateState.error(props: state.props, failure: f));
      },
      (pricesList) {
        print(pricesList);
        final List<PriceSnippet> oneWeekPrices =
            pricesToRanged(pricesList, rangeType: RangeType.oneW);
        final List<PriceSnippet> twoWeeksPrices =
            pricesToRanged(pricesList, rangeType: RangeType.twoW);
        final List<PriceSnippet> oneMonthPrices =
            pricesToRanged(pricesList, rangeType: RangeType.oneM);
        final List<PriceSnippet> twoMonthPrices =
            pricesToRanged(pricesList, rangeType: RangeType.twoM);
        final List<PriceSnippet> sixMonthPrices =
            pricesToRanged(pricesList, rangeType: RangeType.sixM);
        final List<PriceSnippet> oneYearPrices =
            pricesToRanged(pricesList, rangeType: RangeType.oneY);

        emit(ProduceAggregateState.completed(
            props: state.props.copyWith(
          produce: produce,
          oneWeekPricesList: oneWeekPrices,
          twoWeeksPricesList: twoWeeksPrices,
          oneMonthPricesList: oneMonthPrices,
          twoMonthPricesList: twoMonthPrices,
          sixMonthPricesList: sixMonthPrices,
          oneYearPricesList: oneYearPrices,
        )));
      },
    );
  }

  Future<void> addToFavorites(BuildContext context) async {
    final result = await repository.addToFavorites(farmhubUser, produce.produceId);

    result.fold(
      (f) {
        showErrorDialog(context: context, failure: f);
        print(f);
      },
      (updatedFarmhubUser) {
        final isFavorite = !state.props.isProduceFavorite;

        globalUICubit.setShouldRefreshFavorites(true);
        emit(
          state.copyWith(
            props: state.props.copyWith(
              farmhubUser: updatedFarmhubUser,
              isProduceFavorite: isFavorite,
            ),
          ),
        );
      },
    );
  }

  Future<void> removeFromFavorites(BuildContext context) async {
    final result = await repository.removeFromFavorites(farmhubUser, produce.produceId);

    result.fold(
      (f) {
        showErrorDialog(context: context, failure: f);
      },
      (updatedFarmhubUser) {
        final isFavorite = !state.props.isProduceFavorite;

        globalUICubit.setShouldRefreshFavorites(true);
        emit(
          state.copyWith(
            props: state.props.copyWith(
              farmhubUser: updatedFarmhubUser,
              isProduceFavorite: isFavorite,
            ),
          ),
        );
      },
    );
  }
}
