import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_produce_screen_event.dart';
part 'create_produce_screen_state.dart';
part 'create_produce_screen_bloc.freezed.dart';

class CreateProduceScreenBloc extends Bloc<CreateProduceScreenEvent, CreateProduceScreenState> {
  CreateProduceScreenBloc() : super(_Initial()) {
    on<CreateProduceScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
