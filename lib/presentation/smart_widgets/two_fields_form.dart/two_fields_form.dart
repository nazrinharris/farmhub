part of 'two_fields_form_bloc.dart';

/// Guide on using [TwoFieldsForm]
///
/// [TwoFieldsForm] is a widget which has two fields, as it name implies.
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
class TwoFieldsForm<T extends Bloc<TwoFieldsFormEvent, TwoFieldsFormState>>
    extends StatelessWidget {
  final String firstFieldLabel;
  final String firstFieldHintText;

  final String secondFieldLabel;
  final String secondFieldHintText;

  final String? Function(String?)? validateFirstField, validateSecondField;

  final bool? isFirstFieldObscured;
  final bool? isSecondFieldObscured;

  const TwoFieldsForm({
    Key? key,
    required this.firstFieldLabel,
    required this.firstFieldHintText,
    required this.secondFieldLabel,
    required this.secondFieldHintText,
    required this.validateFirstField,
    required this.validateSecondField,
    this.isFirstFieldObscured,
    this.isSecondFieldObscured,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, TwoFieldsFormState>(
      builder: (context, state) {
        TwoFieldsFormState _readBlocState(BuildContext mainContext) =>
            BlocProvider.of<T>(mainContext).state;

        T _readBloc(BuildContext mainContext) =>
            BlocProvider.of<T>(mainContext);

        return Form(
          key: _readBlocState(context).props.formKey,
          child: Column(
            children: [
              _TextFieldLabelText(firstFieldLabel),
              TextFormField(
                  focusNode: _readBlocState(context).props.firstFieldFocusNode,
                  onChanged: (input) {
                    // Should update the cubit's local username value.
                    _readBloc(context).add(
                        TwoFieldsFormEvent.firstFieldValueChanged(
                            input: input));
                  },
                  onFieldSubmitted: (value) {
                    // Should validate the current value and proceed to focus on the next field.
                    _readBloc(context)
                        .add(const TwoFieldsFormEvent.firstFieldSubmitted());
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
              const UIVerticalSpace30(),
              _TextFieldLabelText(secondFieldLabel),
              TextFormField(
                  focusNode: _readBlocState(context).props.secondFieldFocusNode,
                  onChanged: (input) {
                    _readBloc(context).add(
                        TwoFieldsFormEvent.secondFieldValueChanged(
                            input: input));
                  },
                  onFieldSubmitted: (value) {
                    _readBloc(context)
                        .add(const TwoFieldsFormEvent.secondFieldSubmitted());
                  },
                  validator: validateSecondField,
                  autovalidateMode:
                      _readBlocState(context).props.autovalidateModeSecondField,
                  initialValue: _readBlocState(context).props.secondFieldValue,
                  style: Theme.of(context).textTheme.bodyText1,
                  obscureText: isSecondFieldObscured ?? false,
                  decoration: kInputDecoration(
                    context: context,
                    hintText: secondFieldHintText,
                  )),
              const UIVerticalSpace14(),
            ],
          ),
        );
      },
    );
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
