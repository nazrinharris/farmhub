import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'produce_prices_state.dart';
part 'produce_prices_cubit.freezed.dart';

class ProducePricesCubit extends Cubit<ProducePricesState> {
  ProducePricesCubit() : super(ProducePricesState.initial());
}
