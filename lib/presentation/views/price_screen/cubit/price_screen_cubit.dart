import 'package:bloc/bloc.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../../../features/produce_manager/data/repository/produce_manager_repository.dart';
import '../../../../features/produce_manager/domain/entities/produce/produce.dart';

part 'price_screen_state.dart';
part 'price_screen_cubit.freezed.dart';

class PriceScreenCubit extends Cubit<PriceScreenState> {
  final Price price;
  final Produce produce;
  final IProduceManagerRepository repository;

  PriceScreenCubit({required this.price, required this.repository, required this.produce})
      : super(PriceScreenState.initial(props: PriceScreenProps(price: price)));

  Future<void> refresh() async {
    emit(PriceScreenState.loading(props: state.props));

    final failureOrPrice = await repository.getPrice(produce.produceId, price.priceId);

    failureOrPrice.fold(
      (f) {
        emit(PriceScreenState.error(props: state.props, failure: f));
      },
      (price) {
        emit(PriceScreenState.completed(props: state.props.copyWith(price: price)));
      },
    );
  }
}
