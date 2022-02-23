import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playground_event.dart';
part 'playground_state.dart';
part 'playground_bloc.freezed.dart';

class PlaygroundBloc extends Bloc<PlaygroundEvent, PlaygroundState> {
  PlaygroundBloc() : super(_Initial()) {
    on<PlaygroundEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
