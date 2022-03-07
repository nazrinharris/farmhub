part of 'multiple_fields_form_bloc.dart';

@freezed
class MultipleFieldsFormState with _$MultipleFieldsFormState {
  const factory MultipleFieldsFormState.initial({required MultipleFieldsFormProps props}) =
      _FormInitial;
  const factory MultipleFieldsFormState.formValidationSuccess(
      {required MultipleFieldsFormProps props}) = _FormValidationSuccess;
}

@freezed
class MultipleFieldsFormProps with _$MultipleFieldsFormProps {
  const factory MultipleFieldsFormProps({
    required AutovalidateMode autovalidateModeFirstField,
    required AutovalidateMode autovalidateModeSecondField,
    required AutovalidateMode autovalidateModeThirdField,
    required AutovalidateMode autovalidateModeFourthField,
    required FocusNode firstFieldFocusNode,
    required FocusNode secondFieldFocusNode,
    required FocusNode thirdFieldFocusNode,
    required FocusNode fourthFieldFocusNode,
    required String? firstFieldValue,
    required String? secondFieldValue,
    required String? thirdFieldValue,
    required String? fourthFieldValue,
    required GlobalKey<FormState> formKey,
  }) = _MultipleFieldsFormProps;
}
