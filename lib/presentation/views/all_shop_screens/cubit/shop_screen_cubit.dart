import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_screen_state.dart';
part 'shop_screen_cubit.freezed.dart';

class ShopScreenCubit extends Cubit<ShopScreenState> {
  ShopScreenCubit() : super(ShopScreenState.initial());
}
