import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/domain/helpers.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../../../features/produce_manager/domain/entities/price/price.dart';

part 'produce_screen_event.dart';
part 'produce_screen_state.dart';
part 'produce_screen_bloc.freezed.dart';

class ProduceScreenBloc extends Bloc<ProduceScreenEvent, ProduceScreenState> {
  final TabController tabController;
  final IProduceManagerRepository repository;

  ProduceScreenBloc({
    required this.tabController,
    required this.repository,
  }) : super(PSSInitial(
            props: ProduceScreenProps(
          tabController: tabController,
          index: tabController.index,
        ))) {
    on<_PSEStarted>(started);
    on<_PSETabChanged>(tabChanged);
    on<_PSEGetAggregatePrices>(getAggregatePrices);
  }

  FutureOr<void> started(
    _PSEStarted event,
    Emitter<ProduceScreenState> emit,
  ) {
    emit(state);
  }

  FutureOr<void> tabChanged(
    _PSETabChanged event,
    Emitter<ProduceScreenState> emit,
  ) {
    /// List of index correspondent
    /// 0 - 1W
    /// 1 - 2W
    /// 2 - 1M
    /// 3 - 2M
    /// 4 - 6M
    /// 5 - 1Y
    if (tabController.indexIsChanging) {
      emit(state.copyWith(props: state.props.copyWith(index: tabController.index)));
      print(tabController.index);
    }
  }

  FutureOr<void> getAggregatePrices(
    _PSEGetAggregatePrices event,
    Emitter<ProduceScreenState> emit,
  ) async {
    // Indicate Loading
    emit(ProduceScreenState.loading(props: state.props));

    // Begin retrieval of [aggregate-prices]
    final failureOrAggregatePrices = await repository.getAggregatePrices(event.produceId);

    failureOrAggregatePrices.fold(
      (f) {
        emit(ProduceScreenState.error(props: state.props, failure: f));
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

        emit(ProduceScreenState.completed(
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

  @override
  Future<void> close() {
    return super.close();
  }
}
