import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../../../features/produce_manager/domain/entities/price/price.dart';

part 'produce_prices_state.dart';
part 'produce_prices_cubit.freezed.dart';

class ProducePricesCubit extends Cubit<ProducePricesState> {
  final IProduceManagerRepository repository;

  ProducePricesCubit({required this.repository}) : super(const ProducePricesState.initial([]));

  Future<void> getFirstTenPrices(String produceId) async {
    emit(ProducePricesState.firstTenPricesLoading(state.pricesList));

    final failureOrPriceList = await repository.getFirstTenPrices(produceId);

    failureOrPriceList.fold(
      (f) {
        emit(ProducePricesState.pricesError(state.pricesList, f));
      },
      (pricesList) {
        emit(ProducePricesState.firstTenPricesCompleted(pricesList));
      },
    );
  }

  void getNextTenPrices(String produceId) async {
    emit(ProducePricesState.nextTenPricesLoading(state.pricesList));

    final failureOrNewPricesList = await repository.getNextTenPrices(state.pricesList, produceId);

    failureOrNewPricesList.fold(
      (f) {
        emit(ProducePricesState.pricesError(state.pricesList, f));
      },
      (newPricesList) {
        emit(ProducePricesState.nextTenPricesCompleted(newPricesList));
      },
    );
  }
}
