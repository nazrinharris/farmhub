import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiple_fields_form_event.dart';
part 'multiple_fields_form_state.dart';
part 'multiple_fields_form_bloc.freezed.dart';
part 'multiple_fields_form.dart';

FirstTwoFieldsFormBloc readFirstFormBloc(BuildContext context) =>
    BlocProvider.of<FirstTwoFieldsFormBloc>(context);

SecondTwoFieldsFormBloc readSecondFormBloc(BuildContext context) =>
    BlocProvider.of<SecondTwoFieldsFormBloc>(context);

mixin FirstTwoFieldsFormBloc on Bloc<MultipleFieldsFormEvent, MultipleFieldsFormState> {}

mixin SecondTwoFieldsFormBloc on Bloc<MultipleFieldsFormEvent, MultipleFieldsFormState> {}

/// Some info on [MultipleFieldsFormBloc]
///
/// The [SecondTwoFieldsFormBloc] is not required, but it can be provided to be used
/// in conjuction with another [MultipleFieldsForm].
///
/// For this conjunction to work, [isWithAnotherTwoFields] must be [true]
class MultipleFieldsFormBloc extends Bloc<MultipleFieldsFormEvent, MultipleFieldsFormState>
    with FirstTwoFieldsFormBloc, SecondTwoFieldsFormBloc {
  final SecondTwoFieldsFormBloc? secondTwoFieldsFormBloc;
  final bool isWithAnotherTwoFields;

  MultipleFieldsFormBloc({
    this.secondTwoFieldsFormBloc,
    required this.isWithAnotherTwoFields,
  }) : super(
          MultipleFieldsFormState.initial(
            props: MultipleFieldsFormProps(
              autovalidateModeFirstField: AutovalidateMode.disabled,
              autovalidateModeSecondField: AutovalidateMode.disabled,
              autovalidateModeThirdField: AutovalidateMode.disabled,
              autovalidateModeFourthField: AutovalidateMode.disabled,
              firstFieldFocusNode: FocusNode(),
              secondFieldFocusNode: FocusNode(),
              thirdFieldFocusNode: FocusNode(),
              fourthFieldFocusNode: FocusNode(),
              firstFieldValue: null,
              secondFieldValue: null,
              thirdFieldValue: null,
              fourthFieldValue: null,
              formKey: GlobalKey<FormState>(),
            ),
          ),
        ) {
    on<_MultipleFieldsFormStarted>(startedEvent);
    on<_MultipleFieldsFormUnfocusAllNodes>(unfocusAllNodesEvent);
    on<_MultipleFieldsFormFirstFieldValueChanged>(firstFieldValueChangedEvent);
    on<_MultipleFieldsFormSecondFieldValueChanged>(secondFieldValueChangedEvent);
    on<_MultipleFieldsFormFirstFieldSubmitted>(firstFieldSubmittedEvent);
    on<_MultipleFieldsFormSecondFieldSubmitted>(secondFieldSubmittedEvent);
    on<_MultipleFieldsFormEnableAlwaysValidation>(enableAlwaysValidationEvent);
  }

  FutureOr<void> startedEvent(
    _MultipleFieldsFormStarted event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    emit(MultipleFieldsFormState.initial(props: state.props));
  }

  FutureOr<void> unfocusAllNodesEvent(
    _MultipleFieldsFormUnfocusAllNodes event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    state.props.firstFieldFocusNode.unfocus();
    state.props.secondFieldFocusNode.unfocus();
    emit(state);
  }

  FutureOr<void> firstFieldValueChangedEvent(
    _MultipleFieldsFormFirstFieldValueChanged event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    emit(state.copyWith.props(firstFieldValue: event.input));
  }

  FutureOr<void> secondFieldValueChangedEvent(
    _MultipleFieldsFormSecondFieldValueChanged event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    emit(state.copyWith.props(secondFieldValue: event.input));
  }

  FutureOr<void> firstFieldSubmittedEvent(
    _MultipleFieldsFormFirstFieldSubmitted event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    state.props.secondFieldFocusNode.requestFocus();
    emit(
      state.copyWith.props(
        autovalidateModeFirstField: AutovalidateMode.always,
      ),
    );
  }

  FutureOr<void> secondFieldSubmittedEvent(
    _MultipleFieldsFormSecondFieldSubmitted event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    emit(
      state.copyWith.props(
        autovalidateModeSecondField: AutovalidateMode.always,
      ),
    );
  }

  FutureOr<void> enableAlwaysValidationEvent(
    _MultipleFieldsFormEnableAlwaysValidation event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    emit(
      state.copyWith.props(
        autovalidateModeFirstField: AutovalidateMode.always,
        autovalidateModeSecondField: AutovalidateMode.always,
      ),
    );
  }

  @override
  Future<void> close() {
    state
      ..props.firstFieldFocusNode.dispose()
      ..props.secondFieldFocusNode.dispose();

    return super.close();
  }
}
