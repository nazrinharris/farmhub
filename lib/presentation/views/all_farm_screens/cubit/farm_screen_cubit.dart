import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm_screen_state.dart';
part 'farm_screen_cubit.freezed.dart';

class FarmScreenCubit extends Cubit<FarmScreenState> {
  FarmScreenCubit() : super(FarmScreenState.initial());
}
