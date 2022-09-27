// ignore_for_file: prefer_const_constructors

import 'package:farmhub/core/auth/auth_cubit/auth_cubit.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

import '../../../locator.dart';
import '../../shared_widgets/buttons.dart';
import '../../shared_widgets/scroll_physics.dart';
import '../../shared_widgets/toasts.dart';
import '../../shared_widgets/ui_helpers.dart';
import '../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import '../../themes/farmhub_theme.dart';

class VerifyCodeScreenArguments {
  final String verificationId;
  final PhoneNumber phoneNumber;

  const VerifyCodeScreenArguments({
    required this.verificationId,
    required this.phoneNumber,
  });
}

class VerifyCodeScreen extends StatefulWidget {
  final VerifyCodeScreenArguments arguments;

  const VerifyCodeScreen({required this.arguments, Key? key}) : super(key: key);

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  late GlobalKey<FormState> formKey;
  late TextEditingController textEditingController;
  late FocusNode focusNode;
  late AutovalidateMode mode;

  @override
  void initState() {
    super.initState();

    formKey = GlobalKey<FormState>();
    textEditingController = TextEditingController();
    focusNode = FocusNode();
    mode = AutovalidateMode.disabled;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(
            authRepository: locator(),
            firebaseAuth: locator(),
            authRemoteDataSource: locator(),
          ),
        ),
        BlocProvider(
          create: (context) => PrimaryButtonAwareCubit(),
        )
      ],
      child: Builder(builder: (context) {
        return BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AccountCreationSuccess) {
              print("Login Success!");
              context.read<PrimaryButtonAwareCubit>().triggerFirstPage();
              Navigator.of(context).pushNamedAndRemoveUntil('/nav_main', (route) => false);
            } else if (state is CredentialLoginError) {
              print("ERROR LOGGING IN");
              print(state.failure);
              showToastWidget(
                ErrorToast(errorMessage: state.failure.message),
                context: context,
                animation: StyledToastAnimation.slideFromTopFade,
                reverseAnimation: StyledToastAnimation.slideToTopFade,
                position: StyledToastPosition.top,
                animDuration: const Duration(milliseconds: 800),
                curve: Curves.easeOutExpo,
                reverseCurve: Curves.easeInExpo,
                duration: const Duration(seconds: 5),
              );
            } else if (state is AccountCreationError) {
              print("ERROR CREATING ACCOUNT (credential login success)");
              showToastWidget(
                ErrorToast(errorMessage: state.failure.message),
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
                    VerifyCodeScreenHeader(
                      nsn: widget.arguments.phoneNumber.nsn,
                    ),
                    const UICustomVertical(60),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        children: [
                          Flexible(
                            child: Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  TextFieldLabelText("Code"),
                                  TextFormField(
                                    controller: textEditingController,
                                    focusNode: focusNode,
                                    autovalidateMode: mode,
                                    validator: (value) {
                                      if (value == null) {
                                        return "Please enter the code";
                                      } else if (int.tryParse(value) == null) {
                                        return "The code is only in numbers";
                                      } else if (value.length != 6) {
                                        return "Enter the complete code";
                                      } else {
                                        return null;
                                      }
                                    },
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.deny(RegExp("[( |,|.)|()]"))
                                    ],
                                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                          letterSpacing: 30,
                                          fontSize: 30,
                                        ),
                                    onFieldSubmitted: (value) {
                                      setState(() {
                                        mode = AutovalidateMode.always;
                                      });
                                    },
                                    maxLength: 6,
                                    textAlign: TextAlign.center,
                                    decoration: kInputDecoration(
                                      context: context,
                                      hintText: "Enter the six code from SMS",
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                      print(textEditingController.text);

                      final valid = formKey.currentState!.validate();

                      if (valid) {
                        context.read<PrimaryButtonAwareCubit>().triggerLoading();
                        FocusScope.of(context).unfocus();

                        context.read<AuthCubit>().sendCodeFromClientAndSignIn(
                              verificationId: widget.arguments.verificationId,
                              code: textEditingController.value.text,
                              // phoneNumber: widget.arguments.phoneNumber,
                            );
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

class VerifyCodeScreenHeader extends StatelessWidget {
  final String nsn;

  const VerifyCodeScreenHeader({
    Key? key,
    required this.nsn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.dialpad, size: 44),
          const UIVerticalSpace24(),
          Text(
            "Verify Code",
            style: Theme.of(context).textTheme.headline1,
          ),
          UICustomVertical(4),
          Text(
            "Code is sent to: +60$nsn",
            style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14),
          ),
          const UIVerticalSpace14(),
          Text(
            "Enter the code sent through SMS",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).colorScheme.primaryVariant,
                ),
          ),
        ],
      ),
    );
  }
}
