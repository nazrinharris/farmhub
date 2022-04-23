import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_screen_event.dart';
part 'search_screen_state.dart';
part 'search_screen_bloc.freezed.dart';

class SearchScreenBloc extends Bloc<SearchScreenEvent, SearchScreenState> {
  SearchScreenBloc() : super(_Initial()) {
    on<SearchScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
