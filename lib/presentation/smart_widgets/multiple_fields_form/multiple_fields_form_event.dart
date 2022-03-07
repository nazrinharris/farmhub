part of 'multiple_fields_form_bloc.dart';

MultipleFieldsFormEvent unfocusAllNodes = const MultipleFieldsFormEvent.unfocusAllNodes();
MultipleFieldsFormEvent enableAlwaysValidation =
    const MultipleFieldsFormEvent.enableAlwaysValidation();

@freezed
class MultipleFieldsFormEvent with _$MultipleFieldsFormEvent {
  const factory MultipleFieldsFormEvent.started() = _MultipleFieldsFormStarted;
  const factory MultipleFieldsFormEvent.unfocusAllNodes() = _MultipleFieldsFormUnfocusAllNodes;
  const factory MultipleFieldsFormEvent.enableAlwaysValidation() =
      _MultipleFieldsFormEnableAlwaysValidation;

  // First
  const factory MultipleFieldsFormEvent.firstFieldValueChanged({required String input}) =
      _MultipleFieldsFormFirstFieldValueChanged;
  const factory MultipleFieldsFormEvent.firstFieldSubmitted() =
      _MultipleFieldsFormFirstFieldSubmitted;

  // Second
  const factory MultipleFieldsFormEvent.secondFieldValueChanged({required String input}) =
      _MultipleFieldsFormSecondFieldValueChanged;
  const factory MultipleFieldsFormEvent.secondFieldSubmitted() =
      _MultipleFieldsFormSecondFieldSubmitted;

  // Third
  const factory MultipleFieldsFormEvent.thirdFieldValueChanged({required String input}) =
      _MultipleFieldsFormThirdFieldValueChanged;
  const factory MultipleFieldsFormEvent.thirdFieldSubmitted() =
      _MultipleFieldsFormThirdFieldSubmitted;

  // Fourth
  const factory MultipleFieldsFormEvent.fourthFieldValueChanged({required String input}) =
      _MultipleFieldsFormFourthFieldValueChanged;
  const factory MultipleFieldsFormEvent.fourthFieldSubmitted() =
      _MultipleFieldsFormFourthFieldSubmitted;
}
