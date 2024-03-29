// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

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

class MultipleFieldsFormBloc extends Bloc<MultipleFieldsFormEvent, MultipleFieldsFormState>
    with FirstTwoFieldsFormBloc, SecondTwoFieldsFormBloc {
  final GlobalKey<FormState>? formKey;

  final FocusNode? firstFieldFocusNode;
  final FocusNode? secondFieldFocusNode;
  final FocusNode? thirdFieldFocusNode;
  final FocusNode? fourthFieldFocusNode;

  final Function()? onSubmitFirstField;
  final Function()? onSubmitSecondField;
  final Function()? onSubmitThirdField;
  final Function()? onSubmitFourthField;

  final String? firstFieldValue;
  final String? secondFieldValue;
  final String? thirdFieldValue;
  final String? fourthFieldValue;

  MultipleFieldsFormBloc({
    // Nodes
    this.firstFieldFocusNode,
    this.secondFieldFocusNode,
    this.thirdFieldFocusNode,
    this.fourthFieldFocusNode,
    // onSubmit
    this.onSubmitFirstField,
    this.onSubmitSecondField,
    this.onSubmitThirdField,
    this.onSubmitFourthField,
    // FormKey
    this.formKey,
    // Default Fields
    this.firstFieldValue,
    this.secondFieldValue,
    this.thirdFieldValue,
    this.fourthFieldValue,
  }) : super(
          MultipleFieldsFormState.initial(
            props: MultipleFieldsFormProps(
              autovalidateModeFirstField: AutovalidateMode.disabled,
              autovalidateModeSecondField: AutovalidateMode.disabled,
              autovalidateModeThirdField: AutovalidateMode.disabled,
              autovalidateModeFourthField: AutovalidateMode.disabled,
              firstFieldFocusNode: firstFieldFocusNode ?? FocusNode(),
              secondFieldFocusNode: secondFieldFocusNode ?? FocusNode(),
              thirdFieldFocusNode: thirdFieldFocusNode ?? FocusNode(),
              fourthFieldFocusNode: fourthFieldFocusNode ?? FocusNode(),
              firstFieldValue: firstFieldValue,
              secondFieldValue: secondFieldValue,
              thirdFieldValue: thirdFieldValue,
              fourthFieldValue: fourthFieldValue,
              formKey: formKey ?? GlobalKey<FormState>(),
            ),
          ),
        ) {
    // General
    on<_MultipleFieldsFormStarted>(startedEvent);
    on<_MultipleFieldsFormUnfocusAllNodes>(unfocusAllNodesEvent);
    on<_MultipleFieldsFormEnableAlwaysValidation>(enableAlwaysValidationEvent);

    // First
    on<_MultipleFieldsFormFirstFieldValueChanged>(firstFieldValueChangedEvent);
    on<_MultipleFieldsFormFirstFieldSubmitted>(firstFieldSubmittedEvent);

    // Second
    on<_MultipleFieldsFormSecondFieldValueChanged>(secondFieldValueChangedEvent);
    on<_MultipleFieldsFormSecondFieldSubmitted>(secondFieldSubmittedEvent);

    // Third
    on<_MultipleFieldsFormThirdFieldValueChanged>(thirdFieldValueChangedEvent);
    on<_MultipleFieldsFormThirdFieldSubmitted>(thirdFieldSubmittedEvent);

    // Fourth
    on<_MultipleFieldsFormFourthFieldValueChanged>(fourthFieldValueChangedEvent);
    on<_MultipleFieldsFormFourthFieldSubmitted>(fourthFieldSubmittedEvent);
  }

  //* General Handlres
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
    state.props.thirdFieldFocusNode.unfocus();
    state.props.fourthFieldFocusNode.unfocus();
    emit(state);
  }

  FutureOr<void> enableAlwaysValidationEvent(
    _MultipleFieldsFormEnableAlwaysValidation event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    emit(
      state.copyWith.props(
        autovalidateModeFirstField: AutovalidateMode.always,
        autovalidateModeSecondField: AutovalidateMode.always,
        autovalidateModeThirdField: AutovalidateMode.always,
        autovalidateModeFourthField: AutovalidateMode.always,
      ),
    );
  }

  //* First Field
  FutureOr<void> firstFieldValueChangedEvent(
    _MultipleFieldsFormFirstFieldValueChanged event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    emit(state.copyWith.props(firstFieldValue: event.input));
  }

  FutureOr<void> firstFieldSubmittedEvent(
    _MultipleFieldsFormFirstFieldSubmitted event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    state.props.secondFieldFocusNode.requestFocus();
    if (onSubmitFirstField != null) {
      onSubmitFirstField!();
    }
    emit(
      state.copyWith.props(
        autovalidateModeFirstField: AutovalidateMode.always,
      ),
    );
  }

  //* Second Field
  FutureOr<void> secondFieldValueChangedEvent(
    _MultipleFieldsFormSecondFieldValueChanged event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    emit(state.copyWith.props(secondFieldValue: event.input));
  }

  FutureOr<void> secondFieldSubmittedEvent(
    _MultipleFieldsFormSecondFieldSubmitted event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    state.props.thirdFieldFocusNode.requestFocus();
    if (onSubmitSecondField != null) {
      onSubmitSecondField!();
    }
    emit(
      state.copyWith.props(
        autovalidateModeSecondField: AutovalidateMode.always,
      ),
    );
  }

  //* Third Field
  FutureOr<void> thirdFieldValueChangedEvent(
    _MultipleFieldsFormThirdFieldValueChanged event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    emit(state.copyWith.props(thirdFieldValue: event.input));
  }

  FutureOr<void> thirdFieldSubmittedEvent(
    _MultipleFieldsFormThirdFieldSubmitted event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    state.props.fourthFieldFocusNode.requestFocus();
    if (onSubmitThirdField != null) {
      onSubmitThirdField!();
    }
    emit(
      state.copyWith.props(
        autovalidateModeThirdField: AutovalidateMode.always,
      ),
    );
  }

  //* Fourth Field
  FutureOr<void> fourthFieldValueChangedEvent(
    _MultipleFieldsFormFourthFieldValueChanged event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    emit(state.copyWith.props(fourthFieldValue: event.input));
  }

  FutureOr<void> fourthFieldSubmittedEvent(
    _MultipleFieldsFormFourthFieldSubmitted event,
    Emitter<MultipleFieldsFormState> emit,
  ) {
    if (onSubmitFourthField != null) {
      onSubmitFourthField!();
    }
    emit(
      state.copyWith.props(
        autovalidateModeFourthField: AutovalidateMode.always,
      ),
    );
  }

  @override
  Future<void> close() {
    state
      ..props.firstFieldFocusNode.dispose()
      ..props.secondFieldFocusNode.dispose()
      ..props.thirdFieldFocusNode.dispose()
      ..props.fourthFieldFocusNode.dispose();

    return super.close();
  }
}
