import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/cards.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/info_tile/bloc/info_tile_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/info_tile/info_tile.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/produce_dialog_cubit/produce_dialog_cubit.dart';

import 'package:farmhub/presentation/views/login_screen/bloc/login_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:ndialog/ndialog.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../../core/auth/auth_cubit/auth_cubit.dart';
import '../../../core/errors/error_messages.dart';
import '../../shared_widgets/toasts.dart';
import '../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with AnimationMixin {
  late AnimationController _infoTileVisibilityController;
  late Animation<double> _infoTileHeightFactor;
  late Animation<double> _infoTileOpacity;
  late CurvedAnimation _infoTileCurve;

  @override
  void initState() {
    super.initState();

    _infoTileVisibilityController = createController();

    _infoTileCurve = CurvedAnimation(
      parent: _infoTileVisibilityController,
      curve: Curves.easeOutExpo,
      reverseCurve: Curves.easeInExpo,
    );

    _infoTileHeightFactor = Tween<double>(begin: 0.0, end: 1.0).animate(_infoTileCurve);
    _infoTileOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(_infoTileCurve);
  }

  FirstTwoFieldsFormBloc giveFirstTwoFieldsFormBloc(BuildContext context) {
    return context.read<FirstTwoFieldsFormBloc>();
  }

  InfoTileBloc giveInfoTileBloc(BuildContext context) {
    return context.read<InfoTileBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return MultiBlocProvider(
      providers: [
        BlocProvider<FirstTwoFieldsFormBloc>(
          create: (context) => MultipleFieldsFormBloc(),
        ),
        BlocProvider(
          create: (context) => initialInfoTileBloc(),
        ),
        BlocProvider(
          create: (context) => PrimaryButtonAwareCubit(),
        ),
        BlocProvider(
          create: (context) => ProduceDialogCubit(
            locator(),
            locator(),
            locator(),
            authRepository: locator(),
          ),
        ),
        BlocProvider(
          create: (context) => AuthCubit(
            firebaseAuth: locator(),
            authRepository: locator(),
            authRemoteDataSource: locator(),
            globalAuthCubit: locator(),
          ),
        ),
      ],
      child: Builder(
          builder: (context) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => LoginScreenBloc(
                      loginScreenProps: const LoginScreenProps(
                        isInfoTileVisible: false,
                      ),
                      authBloc: locator(),
                      firstTwoFieldsFormBloc: giveFirstTwoFieldsFormBloc(context),
                      infoTileBloc: giveInfoTileBloc(context),
                      primaryButtonAwareCubit: context.read<PrimaryButtonAwareCubit>(),
                      infoTileAnimationController: _infoTileVisibilityController,
                    ),
                  )
                ],
                child: Builder(builder: (context) {
                  return BlocListener<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is ThirdPartyAccountCreationSuccess) {
                        debugPrint("Login Success!");

                        // True means that the user created is new.
                        if (state.result.second == true) {
                          Navigator.of(context)
                              .pushNamedAndRemoveUntil('/nav_main', (route) => false);
                          Navigator.of(context).pushNamed("/choose_user_type");
                        } else {
                          Navigator.of(context)
                              .pushNamedAndRemoveUntil('/nav_main', (route) => false);
                        }
                      } else if (state is CredentialLoginError) {
                        debugPrint("ERROR LOGGING IN");
                        debugPrint(state.failure.toString());
                        showToastWidget(
                          ErrorToast(errorMessage: messageForFailure(state.failure)),
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
                      extendBodyBehindAppBar: true,
                      resizeToAvoidBottomInset: false,
                      appBar: DefaultAppBar(
                        leadingIcon: const Icon(Icons.arrow_back),
                        leadingOnPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      body: SafeArea(
                        left: false,
                        right: false,
                        top: false,
                        child: SizedBox(
                          //padding: const EdgeInsets.symmetric(horizontal: 24),
                          height: screen.height,
                          width: screen.width,
                          child: Stack(
                            children: [
                              ListView(
                                physics: const AlwaysScrollableScrollPhysics(
                                    parent: BouncingScrollPhysics()),
                                children: [
                                  const UITopPadding(),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Align(
                                      heightFactor: _infoTileHeightFactor.value,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 24),
                                        child: Opacity(
                                          opacity: _infoTileOpacity.value,
                                          child: const InfoTile(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 24),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Login",
                                          style: Theme.of(context).textTheme.headline1,
                                        ),
                                        Text(
                                          "Welcome back!",
                                          style: Theme.of(context).textTheme.headline2,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const UICustomVertical(60),
                                  const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 30),
                                      child: LoginFields()),
                                  // const UIVerticalSpace24(),
                                  // Container(
                                  //   alignment: Alignment.center,
                                  //   child: ThirdPartySignUpButton(
                                  //     content: "Debug",
                                  //     onPressed: () {
                                  //       final user =
                                  //           context.read<GlobalAuthCubit>().state.farmhubUser;

                                  //       print("User Data -> $user");

                                  //       context
                                  //           .read<LoginScreenBloc>()
                                  //           .add(const LoginScreenEvent.toggleInfoTileVisibility());

                                  //       Navigator.of(context).pushNamed("/navigate");
                                  //     },
                                  //     width: 100,
                                  //   ),
                                  // ),
                                  const UIVerticalSpace24(),
                                  Container(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () {
                                        debugPrint("Tapped");

                                        final resetPasswordDialog = returnResetPasswordConfirmation(
                                          context,
                                          requireEmail: true,
                                          formKey: GlobalKey<FormState>(),
                                          formFocusNode: FocusNode(),
                                          textEditingController: TextEditingController(),
                                        );

                                        resetPasswordDialog.show(context,
                                            transitionType: DialogTransitionType.Bubble);
                                      },
                                      child: Text(
                                        "Forgot Password? Click here.",
                                        style: Theme.of(context).textTheme.caption!.copyWith(
                                              fontSize: 14,
                                              decoration: TextDecoration.underline,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const UIVerticalSpace30(),
                                  Align(
                                    child: Text(
                                      "or",
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(fontSize: 14),
                                    ),
                                  ),
                                  const UIVerticalSpace30(),
                                  const PhoneAuthCard(type: PhoneAuthCardType.login),
                                  const UIVerticalSpace14(),
                                  GoogleAuthCard(
                                    authCubit: context.read<AuthCubit>(),
                                  ),
                                  const UICustomVertical(200),
                                ],
                              ),
                              SizedBox(
                                height: screen.height,
                                width: screen.width,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: (0.058 * screen.width)),
                                    child: const _BuildBottomButton(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              )),
    );
  }

  InfoTileBloc initialInfoTileBloc() {
    return InfoTileBloc(
      infoTileProps: InfoTileProps(
        leadingText: "No operation running",
        child: Text(
          'You should not have seen this. Congrats! You found a bug!',
          style: TextStyle(
            fontFamily: "Montserrat",
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        isAbleToExpand: true,
        isExpanded: false,
        currentStatus: InfoTileStatus.loading,
      ),
    );
  }
}

class LoginFields extends StatelessWidget {
  const LoginFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultipleFieldsForm<FirstTwoFieldsFormBloc>(
      type: MultipleFieldsFormType.twoField,
      firstFieldLabel: 'Email',
      firstFieldHintText: 'Enter your email',
      secondFieldLabel: 'Password',
      secondFieldHintText: 'Enter your password',
      isSecondFieldObscured: true,
      validateFirstField: validateEmail,
      validateSecondField: validatePassword,
    );
  }

  String? validateEmail(String? value) {
    const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    } else {
      if (RegExp(emailRegex).hasMatch(value)) {
        return null;
      } else {
        return 'Please enter a valid email';
      }
    }
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Sorry but this cannot be empty";
    } else if (value.length < 6) {
      return "Passwords must be 6 characters or longer";
    } else {
      return null;
    }
  }
}

class _BuildBottomButton extends StatelessWidget {
  const _BuildBottomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 34.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PrimaryButtonAware(
            firstPageContent: 'Continue',
            firstPageOnPressed: () {
              context.read<LoginScreenBloc>().add(LoginScreenEvent.continuePressed(context));
            },
            firstPageButtonIcon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 24,
            ),
            type: PrimaryButtonAwareType.onePage,
            width: (0.41 * screen.width),
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            borderRadius: 20.0,
          ),
        ],
      ),
    );
  }
}
