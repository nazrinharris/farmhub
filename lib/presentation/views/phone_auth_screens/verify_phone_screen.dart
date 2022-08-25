import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/shared_widgets/toasts.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/views/phone_auth_screens/verify_code_screen.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/auth/auth_bloc/auth_bloc.dart';
import '../../../locator.dart';

class VerifyPhoneScreen extends StatefulWidget {
  const VerifyPhoneScreen({Key? key}) : super(key: key);

  @override
  State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  late String parsedNum;
  late String verificationId;
  late PhoneNumber myPhone;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(
            authRepository: locator(),
            globalAuthCubit: locator(),
            firebaseAuth: locator(),
          ),
        ),
        BlocProvider<FirstTwoFieldsFormBloc>(
          create: (context) => MultipleFieldsFormBloc(),
        ),
        BlocProvider(
          create: (context) => PrimaryButtonAwareCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is ASPhoneCodeSent) {
              verificationId = state.verificationId;

              context.read<PrimaryButtonAwareCubit>().triggerFirstPage();
              Navigator.of(context).pushNamed(
                '/verify_code',
                arguments: VerifyCodeScreenArguments(
                  verificationId: verificationId,
                  phoneNumber: myPhone,
                ),
              );
            } else if (state is ASVerifyPhoneError) {
              context.read<PrimaryButtonAwareCubit>().triggerFirstPage();
              showToastWidget(
                ErrorToast(),
                context: context,
                animation: StyledToastAnimation.slideFromTopFade,
                reverseAnimation: StyledToastAnimation.slideToTopFade,
                position: StyledToastPosition.top,
                animDuration: const Duration(milliseconds: 800),
                curve: Curves.easeOutExpo,
                reverseCurve: Curves.easeInExpo,
                duration: const Duration(seconds: 5),
              );
            }
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: DefaultAppBar(
              leadingIcon: Icon(Icons.arrow_back),
              leadingOnPressed: () {
                Navigator.of(context).pop();
              },
            ),
            body: Stack(
              children: [
                ListView(
                  physics: DefaultScrollPhysics,
                  children: [
                    const VerifyPhoneScreenHeader(),
                    const UICustomVertical(60),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        children: [
                          Flexible(
                              child: MultipleFieldsForm<FirstTwoFieldsFormBloc>(
                            type: MultipleFieldsFormType.oneField,
                            firstFieldLabel: "Phone Number",
                            firstFieldHintText: "Enter your Malaysian phone number",
                            firstFieldInputType: TextInputType.phone,
                            validateFirstField: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter a valid phone number";
                              } else {
                                final myPhone = PhoneNumber.fromNational(IsoCode.MY, value);

                                if (!myPhone.validate()) {
                                  return "Enter a valid phone number";
                                } else {
                                  return null;
                                }
                              }
                            },
                          ))
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.only(bottom: 44, right: 24),
                  child: PrimaryButtonAware(
                    type: PrimaryButtonAwareType.onePage,
                    width: (0.44 * MediaQuery.of(context).size.width),
                    firstPageButtonIcon: const Icon(Icons.arrow_forward),
                    firstPageContent: "Continue",
                    firstPageOnPressed: () {
                      FocusScope.of(context).unfocus();
                      context.read<FirstTwoFieldsFormBloc>().add(enableAlwaysValidation);

                      final isValid = context
                          .read<FirstTwoFieldsFormBloc>()
                          .state
                          .props
                          .formKey
                          .currentState!
                          .validate();

                      if (isValid) {
                        context.read<PrimaryButtonAwareCubit>().triggerLoading();
                        final value =
                            context.read<FirstTwoFieldsFormBloc>().state.props.firstFieldValue;
                        myPhone = PhoneNumber.fromNational(IsoCode.MY, value!);
                        print(myPhone.toString());

                        context.read<AuthBloc>().add(AuthEvent.verifyPhoneNumber(myPhone));
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

class VerifyPhoneScreenHeader extends StatelessWidget {
  const VerifyPhoneScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.phone, size: 44),
          const UIVerticalSpace24(),
          Text(
            "Phone Verification",
            style: Theme.of(context).textTheme.headline1,
          ),
          const UIVerticalSpace14(),
          Text(
            "Enter a phone number, we'll send a code to it",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).colorScheme.primaryVariant,
                ),
          ),
        ],
      ),
    );
  }
}
