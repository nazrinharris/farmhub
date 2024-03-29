// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/auth_bloc/auth_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/info_tile/bloc/info_tile_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/info_tile/info_tile.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';

part 'login_screen_event.dart';
part 'login_screen_state.dart';
part 'login_screen_bloc.freezed.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  final LoginScreenProps loginScreenProps;
  final AuthBloc authBloc;

  // Instance-Specific Blocs
  final PrimaryButtonAwareCubit primaryButtonAwareCubit;
  final InfoTileBloc infoTileBloc;
  final FirstTwoFieldsFormBloc firstTwoFieldsFormBloc;
  final AnimationController infoTileAnimationController;

  LoginScreenBloc({
    required this.primaryButtonAwareCubit,
    required this.infoTileBloc,
    required this.firstTwoFieldsFormBloc,
    required this.loginScreenProps,
    required this.authBloc,
    required this.infoTileAnimationController,
  }) : super(_LSSInitial(loginScreenProps)) {
    on<_LSEStarted>(started);
    on<_LSEIdle>(idle);
    on<_LSEContinuePressed>(continuePressed);
    on<_LSEToggleVisible>(toggleVisible);
  }

  FutureOr<void> started(
    _LSEStarted event,
    Emitter<LoginScreenState> emit,
  ) {
    emit(state);
  }

  FutureOr<void> idle(
    _LSEIdle event,
    Emitter<LoginScreenState> emit,
  ) {
    emit(state);
  }

  FutureOr<void> continuePressed(
    _LSEContinuePressed event,
    Emitter<LoginScreenState> emit,
  ) async {
    debugPrint("continuePressed Started");

    void updateInfoTile(InfoTileProps infoTileProps) {
      infoTileBloc.add(InfoTileEvent.triggerStateChange(infoTileProps));
    }

    emit(LoginScreenState.loading(state.props));

    // Enable AlwaysValidation for FirstTwoFieldsForm
    firstTwoFieldsFormBloc.add(const MultipleFieldsFormEvent.enableAlwaysValidation());

    // Access Status and check whether form is valid
    final isValid = firstTwoFieldsFormBloc.state.props.formKey.currentState!.validate();
    if (isValid) {
      // Initialization
      final email = firstTwoFieldsFormBloc.state.props.firstFieldValue!;
      final password = firstTwoFieldsFormBloc.state.props.secondFieldValue!;

      // UI Reaction
      updateInfoTile(const InfoTileProps(
        leadingText: "Sit tight, logging you in...",
        child: SizedBox.shrink(),
        isAbleToExpand: false,
        isExpanded: false,
        currentStatus: InfoTileStatus.loading,
      ));
      primaryButtonAwareCubit.triggerLoading();
      infoTileAnimationController.play(duration: const Duration(milliseconds: 500));

      // Start Login Process
      authBloc.add(AuthEvent.execLoginWithEmailAndPassword(
        email: email,
        password: password,
      ));

      // TODO: May need to move the updateInfoTile to the WidgetTree, because of the need to access context for [Themes]

      await emit.onEach(
        authBloc.stream,
        onData: (AuthState state) {
          if (state is ASLoginSuccess) {
            updateInfoTile(InfoTileProps(
              leadingText: 'Login Success!',
              child: Text(
                "With the UID: ${state.user.uid}}",
                style: const TextStyle(
                  color: Color(0xff343A1A),
                ),
              ),
              isAbleToExpand: true,
              isExpanded: false,
              currentStatus: InfoTileStatus.success,
            ));

            primaryButtonAwareCubit.triggerFirstPage();
            Navigator.of(event.context).pushNamedAndRemoveUntil('/nav_main', (route) => false);
          } else if (state is ASLoginError) {
            debugPrint(state.code);
            updateInfoTile(InfoTileProps(
              leadingText: 'Uh oh, Something\'s wrong!',
              child: Text(
                state.message,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              isAbleToExpand: true,
              isExpanded: false,
              currentStatus: InfoTileStatus.error,
            ));

            primaryButtonAwareCubit.triggerFirstPage();
          }
        },
      );
    }
  }

  FutureOr<void> toggleVisible(
    _LSEToggleVisible event,
    Emitter<LoginScreenState> emit,
  ) {
    final isVisible = state.props.isInfoTileVisible;

    if (isVisible) {
      infoTileAnimationController.playReverse(duration: const Duration(milliseconds: 500));
    } else {
      infoTileAnimationController.play(duration: const Duration(milliseconds: 500));
    }

    emit(
      state.copyWith(
        props: state.props.copyWith(isInfoTileVisible: !isVisible),
      ),
    );
  }
}
