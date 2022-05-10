import 'package:bloc/bloc.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/produce_manager/domain/entities/price/price.dart';
import '../../../../features/produce_manager/domain/helpers.dart';

part 'produce_aggregate_state.dart';
part 'produce_aggregate_cubit.freezed.dart';

class ProduceAggregateCubit extends Cubit<ProduceAggregateState> {
  final TabController tabController;
  final IProduceManagerRepository repository;

  ProduceAggregateCubit({
    required this.tabController,
    required this.repository,
  }) : super(ProduceAggregateState.initial(
            props: ProduceAggregateProps(
          tabController: tabController,
          index: tabController.index,
        )));

  /// List of index correspondent
  /// [0, 1W] [1, 2W] [2, 1M] [3, 2M] [4, 6M] [5, 1Y]
  void tabChanged() {
    if (tabController.indexIsChanging) {
      emit(state.copyWith(props: state.props.copyWith(index: tabController.index)));
    }
  }

  void getAggregatePrices(String produceId) async {
    // Indicate Loading
    emit(ProduceAggregateState.loading(props: state.props));

    // Begin retrieval of [aggregate-prices]
    final failureOrAggregatePrices = await repository.getAggregatePrices(produceId);

    failureOrAggregatePrices.fold(
      (f) {
        emit(ProduceAggregateState.error(props: state.props, failure: f));
      },
      (pricesList) {
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
          twoWeeksPricesList: twoWeeksPrices,
          oneMonthPricesList: oneMonthPrices,
          twoMonthPricesList: twoMonthPrices,
          sixMonthPricesList: sixMonthPrices,
          oneYearPricesList: oneYearPrices,
        )));
      },
    );
  }
}
