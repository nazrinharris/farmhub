import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_ui_state.dart';
part 'global_ui_cubit.freezed.dart';

class GlobalUICubit extends Cubit<GlobalUIState> {
  GlobalUICubit()
      : super(const GlobalUIState.initial(GlobalUIProps(
          shouldRefreshMain: false,
        )));

  void setShouldRefreshMain(bool shouldRefreshMain) {
    emit(state.copyWith(props: state.props.copyWith(shouldRefreshMain: shouldRefreshMain)));
  }
}
