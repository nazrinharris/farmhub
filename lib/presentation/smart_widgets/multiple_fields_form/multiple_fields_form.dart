part of 'multiple_fields_form_bloc.dart';

enum MultipleFieldsFormType { oneField, twoField, threeField, fourField }

//TODO: Update Documentation
/// Guide on using [MultipleFieldsForm]
///
/// [MultipleFieldsForm] is a widget which has two fields, as it name implies.
///
/// Using this form requires the supply of either [FirstTwoFieldsFormBloc]
/// or [SecondTwoFieldsFormBloc], or both.
///
///
/// Below are the events which can be called, other events should not be touched.
///
/// [TwoFieldsFormEvent.unfocusAllNodes]
/// Which unfocuses both of the text fields.
///
/// [TwoFieldsFormEvent.firstFieldValueChanged] and
/// [TwoFieldsFormEvent.secondFieldValueChanged],
/// This event is called each time the user changes something in the respective fields
///
/// [TwoFieldsFormEvent.enableAlwaysValidation]
/// Used to enable validation of both fields.
///
///
/// To access the fields, you must have an instance of the respective blocs in the
/// current [context].
///
/// The fields are accessed through the [props] property which is accesible in the [state].
/// For example:
///
/// state.props.firstFieldValue
///
/// Some of the values that may be of use is:
///
/// [firstFieldFocusNode] & [secondFieldFocusNode]
/// [firstFieldValue] & [secondFieldValue]
/// [formKey]
class MultipleFieldsForm<
        T extends Bloc<MultipleFieldsFormEvent, MultipleFieldsFormState>>
    extends StatelessWidget {
  final MultipleFieldsFormType type;

  final String firstFieldLabel;
  final String firstFieldHintText;
  final String? Function(String?)? validateFirstField;
  final bool? isFirstFieldObscured;
  final TextInputType? firstFieldInputType;

  final String? secondFieldLabel;
  final String? secondFieldHintText;
  final String? Function(String?)? validateSecondField;
  final bool? isSecondFieldObscured;
  final TextInputType? secondFieldInputType;

  final String? thirdFieldLabel;
  final String? thirdFieldHintText;
  final String? Function(String?)? validateThirdField;
  final bool? isThirdFieldObscured;
  final TextInputType? thirdFieldInputType;

  final String? fourthFieldLabel;
  final String? fourthFieldHintText;
  final String? Function(String?)? validateFourthField;
  final bool? isFourthFieldObscured;
  final TextInputType? fourthFieldInputType;

  const MultipleFieldsForm({
    // General
    Key? key,
    required this.type,
    // First
    required this.firstFieldLabel,
    required this.firstFieldHintText,
    required this.validateFirstField,
    this.isFirstFieldObscured,
    this.firstFieldInputType,
    // Second
    this.secondFieldLabel,
    this.secondFieldHintText,
    this.validateSecondField,
    this.isSecondFieldObscured,
    this.secondFieldInputType,
    // Third
    this.thirdFieldLabel,
    this.thirdFieldHintText,
    this.validateThirdField,
    this.isThirdFieldObscured,
    this.thirdFieldInputType,
    // Fourth
    this.fourthFieldLabel,
    this.fourthFieldHintText,
    this.validateFourthField,
    this.isFourthFieldObscured,
    this.fourthFieldInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, MultipleFieldsFormState>(
      builder: (context, state) {
        MultipleFieldsFormState _readBlocState(BuildContext mainContext) =>
            BlocProvider.of<T>(mainContext).state;

        T _readBloc(BuildContext mainContext) =>
            BlocProvider.of<T>(mainContext);

        return Form(
          key: _readBlocState(context).props.formKey,
          child: Column(
            children: [
              _TextFieldLabelText(firstFieldLabel),
              TextFormField(
                  keyboardType: firstFieldInputType,
                  focusNode: _readBlocState(context).props.firstFieldFocusNode,
                  onChanged: (input) {
                    // Should update the cubit's local username value.
                    _readBloc(context).add(
                        MultipleFieldsFormEvent.firstFieldValueChanged(
                            input: input));
                  },
                  onFieldSubmitted: (value) {
                    // Should validate the current value and proceed to focus on the next field.
                    _readBloc(context).add(
                        const MultipleFieldsFormEvent.firstFieldSubmitted());
                  },
                  textInputAction: TextInputAction.next,
                  validator: validateFirstField,
                  // Should read this TextField's validation mode from cubit.
                  autovalidateMode:
                      _readBlocState(context).props.autovalidateModeFirstField,
                  // Should read the cubit's local username value
                  initialValue: _readBlocState(context).props.firstFieldValue,
                  style: Theme.of(context).textTheme.bodyText1,
                  obscureText: isFirstFieldObscured ?? false,
                  decoration: kInputDecoration(
                    context: context,
                    hintText: firstFieldHintText,
                  )),
              BuildSecondField<T>(
                type: type,
                secondFieldLabel: secondFieldLabel,
                validateSecondField: validateSecondField,
                isSecondFieldObscured: isSecondFieldObscured,
                secondFieldHintText: secondFieldHintText,
                secondFieldInputType: secondFieldInputType,
              ),
              BuildThirdField(
                type: type,
                thirdFieldLabel: thirdFieldLabel,
                validateThirdField: validateThirdField,
                isThirdFieldObscured: isThirdFieldObscured,
                thirdFieldHintText: thirdFieldHintText,
              ),
              BuildFourthField(
                type: type,
                fourthFieldLabel: fourthFieldLabel,
                validateFourthField: validateFourthField,
                isFourthFieldObscured: isFourthFieldObscured,
                fourthFieldHintText: fourthFieldHintText,
              ),
              const UIVerticalSpace14(),
            ],
          ),
        );
      },
    );
  }
}

class BuildSecondField<
        T extends Bloc<MultipleFieldsFormEvent, MultipleFieldsFormState>>
    extends StatelessWidget {
  const BuildSecondField({
    Key? key,
    required this.type,
    required this.secondFieldLabel,
    required this.validateSecondField,
    required this.isSecondFieldObscured,
    required this.secondFieldHintText,
    this.secondFieldInputType,
  }) : super(key: key);

  final String? secondFieldLabel;
  final String? Function(String? p1)? validateSecondField;
  final bool? isSecondFieldObscured;
  final String? secondFieldHintText;
  final TextInputType? secondFieldInputType;
  final MultipleFieldsFormType type;

  @override
  Widget build(BuildContext context) {
    MultipleFieldsFormState _readBlocState(BuildContext mainContext) =>
        BlocProvider.of<T>(mainContext).state;

    T _readBloc(BuildContext mainContext) => BlocProvider.of<T>(mainContext);

    if (type == MultipleFieldsFormType.oneField) {
      return const SizedBox.shrink();
    } else {
      return Column(
        children: [
          const UIVerticalSpace30(),
          _TextFieldLabelText(secondFieldLabel!),
          TextFormField(
            focusNode: _readBlocState(context).props.secondFieldFocusNode,
            onChanged: (input) {
              _readBloc(context).add(
                  MultipleFieldsFormEvent.secondFieldValueChanged(
                      input: input));
            },
            onFieldSubmitted: (value) {
              _readBloc(context)
                  .add(const MultipleFieldsFormEvent.secondFieldSubmitted());
            },
            validator: validateSecondField,
            autovalidateMode:
                _readBlocState(context).props.autovalidateModeSecondField,
            initialValue: _readBlocState(context).props.secondFieldValue,
            style: Theme.of(context).textTheme.bodyText1,
            obscureText: isSecondFieldObscured ?? false,
            decoration: kInputDecoration(
              context: context,
              hintText: secondFieldHintText!,
            ),
            keyboardType: secondFieldInputType,
          ),
        ],
      );
    }
  }
}

class BuildThirdField<
        T extends Bloc<MultipleFieldsFormEvent, MultipleFieldsFormState>>
    extends StatelessWidget {
  const BuildThirdField({
    Key? key,
    required this.type,
    required this.thirdFieldLabel,
    required this.validateThirdField,
    required this.isThirdFieldObscured,
    this.thirdFieldInputType,
    required this.thirdFieldHintText,
  }) : super(key: key);

  final String? thirdFieldLabel;
  final String? Function(String? p1)? validateThirdField;
  final bool? isThirdFieldObscured;
  final String? thirdFieldHintText;
  final TextInputType? thirdFieldInputType;
  final MultipleFieldsFormType type;

  @override
  Widget build(BuildContext context) {
    MultipleFieldsFormState _readBlocState(BuildContext mainContext) =>
        BlocProvider.of<T>(mainContext).state;

    T _readBloc(BuildContext mainContext) => BlocProvider.of<T>(mainContext);

    if (type == MultipleFieldsFormType.oneField) {
      return const SizedBox.shrink();
    } else if (type == MultipleFieldsFormType.twoField) {
      return const SizedBox.shrink();
    } else {
      return Column(
        children: [
          const UIVerticalSpace30(),
          _TextFieldLabelText(thirdFieldLabel!),
          TextFormField(
            focusNode: _readBlocState(context).props.thirdFieldFocusNode,
            onChanged: (input) {
              _readBloc(context).add(
                  MultipleFieldsFormEvent.thirdFieldValueChanged(input: input));
            },
            onFieldSubmitted: (value) {
              _readBloc(context)
                  .add(const MultipleFieldsFormEvent.thirdFieldSubmitted());
            },
            validator: validateThirdField,
            autovalidateMode:
                _readBlocState(context).props.autovalidateModeThirdField,
            initialValue: _readBlocState(context).props.thirdFieldValue,
            style: Theme.of(context).textTheme.bodyText1,
            obscureText: isThirdFieldObscured ?? false,
            decoration: kInputDecoration(
              context: context,
              hintText: thirdFieldHintText!,
            ),
            keyboardType: thirdFieldInputType,
          ),
        ],
      );
    }
  }
}

class BuildFourthField<
        T extends Bloc<MultipleFieldsFormEvent, MultipleFieldsFormState>>
    extends StatelessWidget {
  const BuildFourthField({
    Key? key,
    required this.type,
    required this.fourthFieldLabel,
    required this.validateFourthField,
    required this.isFourthFieldObscured,
    required this.fourthFieldHintText,
    this.fourthFieldInputType,
  }) : super(key: key);

  final String? fourthFieldLabel;
  final String? Function(String? p1)? validateFourthField;
  final bool? isFourthFieldObscured;
  final String? fourthFieldHintText;
  final TextInputType? fourthFieldInputType;
  final MultipleFieldsFormType type;

  @override
  Widget build(BuildContext context) {
    MultipleFieldsFormState _readBlocState(BuildContext mainContext) =>
        BlocProvider.of<T>(mainContext).state;

    T _readBloc(BuildContext mainContext) => BlocProvider.of<T>(mainContext);

    if (type == MultipleFieldsFormType.oneField) {
      return const SizedBox.shrink();
    } else if (type == MultipleFieldsFormType.twoField) {
      return const SizedBox.shrink();
    } else if (type == MultipleFieldsFormType.threeField) {
      return const SizedBox.shrink();
    } else {
      return Column(
        children: [
          const UIVerticalSpace30(),
          _TextFieldLabelText(fourthFieldLabel!),
          TextFormField(
            focusNode: _readBlocState(context).props.fourthFieldFocusNode,
            onChanged: (input) {
              _readBloc(context).add(
                  MultipleFieldsFormEvent.fourthFieldValueChanged(
                      input: input));
            },
            onFieldSubmitted: (value) {
              _readBloc(context)
                  .add(const MultipleFieldsFormEvent.fourthFieldSubmitted());
            },
            validator: validateFourthField,
            autovalidateMode:
                _readBlocState(context).props.autovalidateModeFourthField,
            initialValue: _readBlocState(context).props.fourthFieldValue,
            style: Theme.of(context).textTheme.bodyText1,
            obscureText: isFourthFieldObscured ?? false,
            decoration: kInputDecoration(
              context: context,
              hintText: fourthFieldHintText!,
            ),
            keyboardType: fourthFieldInputType,
          ),
        ],
      );
    }
  }
}

class _TextFieldLabelText extends StatelessWidget {
  final String labelText;
  const _TextFieldLabelText(this.labelText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        labelText,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
