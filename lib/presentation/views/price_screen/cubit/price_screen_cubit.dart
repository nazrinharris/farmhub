import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_screen_state.dart';
part 'price_screen_cubit.freezed.dart';

class PriceScreenCubit extends Cubit<PriceScreenState> {
  PriceScreenCubit() : super(PriceScreenState.initial());
}
