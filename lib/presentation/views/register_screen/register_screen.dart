// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/views/register_screen/bloc/register_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../../core/auth/auth_cubit/auth_cubit.dart';
import '../../../core/errors/error_messages.dart';
import '../../../core/util/app_const.dart';
import '../../shared_widgets/cards.dart';
import '../../shared_widgets/toasts.dart';
import '../../shared_widgets/ui_helpers.dart';
import '../../smart_widgets/info_tile/bloc/info_tile_bloc.dart';
import '../../smart_widgets/info_tile/info_tile.dart';
import '../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with AnimationMixin {
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

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return RegisterScreenBlocProviders(
      infoTileVisibilityController: _infoTileVisibilityController,
      initialInfoTileBloc: initialInfoTileBloc,
      child: Builder(builder: (context) {
        return BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is ThirdPartyAccountCreationSuccess) {
              debugPrint("Login Success!");
              // True means that the a new user account was created..
              if (state.result.second == true) {
                Navigator.of(context).pushNamedAndRemoveUntil('/nav_main', (route) => false);
                Navigator.of(context).pushNamed("/choose_user_type");
              } else {
                Navigator.of(context).pushNamedAndRemoveUntil('/nav_main', (route) => false);
              }
            } else if (state is CredentialLoginError) {
              debugPrint("ERROR LOGGING IN");
              debugPrint(state.failure.toString());

              // If user cancels from Google or Apple sign in, an error will be thrown, but
              // we will ignore that and NOT show a toast.
              if (state.failure.code == "AuthorizationErrorCode.canceled" ||
                  state.failure.code == AUTH_GOOGLE_SIGN_IN_ABORTED) {
                return;
              }

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
            resizeToAvoidBottomInset: true,
            extendBodyBehindAppBar: true,
            appBar: DefaultAppBar(
              leadingIcon: const Icon(Icons.arrow_back),
              leadingOnPressed: () {
                Navigator.of(context).pop();
              },
            ),
            body: Stack(
              children: [
                ListView(
                  physics: DefaultScrollPhysics,
                  children: [
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
                    const RegisterScreenTitle(),
                    const UICustomVertical(60),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: RegisterFields(),
                    ),
                    const UIVerticalSpace14(),
                    Align(
                      child: Text(
                        "or",
                        style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14),
                      ),
                    ),
                    // Container(
                    //   alignment: Alignment.center,
                    //   child: ThirdPartySignUpButton(
                    //     content: "Debug",
                    //     onPressed: () {
                    //       context.read<RegisterScreenBloc>().add(
                    //             const RegisterScreenEvent.toggleInfoTileVisibility(),
                    //           );
                    //     },
                    //     width: 100,
                    //   ),
                    // ),
                    const UIVerticalSpace30(),
                    const PhoneAuthCard(type: PhoneAuthCardType.register),
                    const UIVerticalSpace14(),
                    GoogleAuthCard(
                      authCubit: context.read<AuthCubit>(),
                      content: "Register with Google",
                    ),
                    if (Platform.isIOS) const UIVerticalSpace14(),
                    if (Platform.isIOS)
                      AppleAuthCard(
                        authCubit: context.read<AuthCubit>(),
                        content: "Register with Apple",
                      ),
                    const UICustomVertical(160)
                  ],
                ),
                Container(
                  width: screen.width,
                  height: screen.height,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  alignment: Alignment.bottomCenter,
                  child: const _BuildBottomButton(),
                )
              ],
            ),
          ),
        );
      }),
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
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        isAbleToExpand: true,
        isExpanded: false,
        currentStatus: InfoTileStatus.loading,
      ),
    );
  }
}

class RegisterFields extends StatefulWidget {
  const RegisterFields({Key? key}) : super(key: key);

  @override
  State<RegisterFields> createState() => _RegisterFieldsState();
}

class _RegisterFieldsState extends State<RegisterFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MultipleFieldsForm<FirstTwoFieldsFormBloc>(
          type: MultipleFieldsFormType.fourField,
          firstFieldLabel: 'Username',
          firstFieldHintText: 'Enter your desired username',
          secondFieldLabel: 'Email',
          secondFieldHintText: 'Enter your email',
          validateFirstField: validateUsername,
          validateSecondField: validateEmail,
          thirdFieldLabel: 'Password',
          thirdFieldHintText: 'Enter a secure password',
          fourthFieldLabel: 'Confirm Password',
          fourthFieldHintText: 'Make sure it\'s the same',
          validateThirdField: validatePassword,
          validateFourthField: validateConfirmPassword,
          isThirdFieldObscured: true,
          isFourthFieldObscured: true,
        ),
      ],
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
    } else if (value.length <= 5) {
      return "Password length must be 6 characters or more";
    } else {
      return null;
    }
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "This cannot be empty";
    } else if (value != context.read<FirstTwoFieldsFormBloc>().state.props.thirdFieldValue) {
      return "The passwords are not the same";
    } else {
      return null;
    }
  }

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a username';
    } else if (value.length <= 3) {
      return 'Usernames must be longer than 3 characters';
    }
    return null;
  }
}

class RegisterScreenTitle extends StatelessWidget {
  const RegisterScreenTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Register",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            "Goooood to see you here!",
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
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
              context.read<RegisterScreenBloc>().add(RegisterScreenEvent.continuePressed(context));
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

class RegisterScreenBlocProviders extends StatelessWidget {
  final Widget child;
  final AnimationController infoTileVisibilityController;
  final Function()? initialInfoTileBloc;

  const RegisterScreenBlocProviders({
    Key? key,
    required this.child,
    required this.infoTileVisibilityController,
    required this.initialInfoTileBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FirstTwoFieldsFormBloc>(
          create: (context) => MultipleFieldsFormBloc(),
        ),
        BlocProvider<SecondTwoFieldsFormBloc>(
          create: (context) => MultipleFieldsFormBloc(),
        ),
        BlocProvider<InfoTileBloc>(
          create: (context) => initialInfoTileBloc!(),
        ),
        BlocProvider<PrimaryButtonAwareCubit>(
          create: (context) => PrimaryButtonAwareCubit(),
        ),
        BlocProvider<AuthCubit>(
            create: (context) => AuthCubit(
                  firebaseAuth: locator(),
                  authRepository: locator(),
                  authRemoteDataSource: locator(),
                  globalAuthCubit: locator(),
                  appVersionRepository: locator(),
                )),
      ],
      child: Builder(
        builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider<RegisterScreenBloc>(
              create: (context) => RegisterScreenBloc(
                infoTileVisibilityController: infoTileVisibilityController,
                registerScreenProps: const RegisterScreenProps(isInfoTileVisible: false),
                authBloc: locator(),
                authRepository: locator(),
                infoTileBloc: context.read<InfoTileBloc>(),
                primaryButtonAwareCubit: context.read<PrimaryButtonAwareCubit>(),
                firstTwoFieldsFormBloc: context.read<FirstTwoFieldsFormBloc>(),
              ),
            ),
          ],
          child: child,
        ),
      ),
    );
  }
}
