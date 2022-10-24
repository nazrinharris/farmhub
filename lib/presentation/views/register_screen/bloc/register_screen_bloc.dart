// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:farmhub/core/auth/auth_bloc/auth_bloc.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/presentation/smart_widgets/info_tile/bloc/info_tile_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/info_tile/info_tile.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../../../core/auth/domain/i_auth_repository.dart';
import '../../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';

part 'register_screen_event.dart';
part 'register_screen_state.dart';
part 'register_screen_bloc.freezed.dart';

class RegisterScreenBloc extends Bloc<RegisterScreenEvent, RegisterScreenState> {
  final RegisterScreenProps registerScreenProps;
  final AuthBloc authBloc;
  final IAuthRepository authRepository;

  // UI-Specific Blocs
  final FirstTwoFieldsFormBloc firstTwoFieldsFormBloc;
  final InfoTileBloc infoTileBloc;
  final PrimaryButtonAwareCubit primaryButtonAwareCubit;
  final AnimationController infoTileVisibilityController;

  RegisterScreenBloc({
    required this.authBloc,
    required this.firstTwoFieldsFormBloc,
    required this.infoTileBloc,
    required this.primaryButtonAwareCubit,
    required this.registerScreenProps,
    required this.infoTileVisibilityController,
    required this.authRepository,
  }) : super(_RSSInitial(registerScreenProps)) {
    on<_RSEStarted>(started);
    on<_RSEIdle>(idle);
    on<_RSEToggleVisible>(toggleVisible);
    on<_RSEContinuePressed>(continuePressed);
  }

  FutureOr<void> started(
    _RSEStarted event,
    Emitter<RegisterScreenState> emit,
  ) {
    emit(state);
  }

  FutureOr<void> idle(
    _RSEIdle event,
    Emitter<RegisterScreenState> emit,
  ) {
    emit(state);
  }

  FutureOr<void> toggleVisible(
    _RSEToggleVisible event,
    Emitter<RegisterScreenState> emit,
  ) {
    final isVisible = state.props.isInfoTileVisible;

    debugPrint("InfoTile is $isVisible");

    if (isVisible) {
      infoTileVisibilityController.playReverse(duration: const Duration(milliseconds: 500));
    } else {
      infoTileVisibilityController.play(duration: const Duration(milliseconds: 500));
    }

    emit(
      state.copyWith(
        props: state.props.copyWith(isInfoTileVisible: !isVisible),
      ),
    );
  }

  FutureOr<void> continuePressed(
    _RSEContinuePressed event,
    Emitter<RegisterScreenState> emit,
  ) async {
    firstTwoFieldsFormBloc.add(unfocusAllNodes);
    firstTwoFieldsFormBloc.add(enableAlwaysValidation);

    void updateInfoTile(InfoTileProps infoTileProps) {
      infoTileBloc.add(InfoTileEvent.triggerStateChange(infoTileProps));
    }

    final bool isFormValid = firstTwoFieldsFormBloc.state.props.formKey.currentState!.validate();

    if (isFormValid) {
      final String username = firstTwoFieldsFormBloc.state.props.firstFieldValue!;
      final String email = firstTwoFieldsFormBloc.state.props.secondFieldValue!;
      final String password = firstTwoFieldsFormBloc.state.props.fourthFieldValue!;

      // Update UI to indicate Loading
      infoTileVisibilityController.play(
        duration: const Duration(milliseconds: 500),
      );
      updateInfoTile(const InfoTileProps(
        leadingText: "Registering your account...",
        child: SizedBox.shrink(),
        isAbleToExpand: false,
        isExpanded: false,
        currentStatus: InfoTileStatus.loading,
      ));
      primaryButtonAwareCubit.triggerLoading();

      // Start Registration Process
      authBloc.add(AuthEvent.execRegisterWithEmailAndPassword(
        email: email,
        password: password,
        username: username,
        userType: UserType.regular,
      ));

      await emit.onEach(authBloc.stream, onData: (AuthState state) {
        if (state is ASRegisterSuccess) {
          updateInfoTile(InfoTileProps(
            leadingText: 'Registration Success!',
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
          Navigator.of(event.context).pushNamed("/choose_user_type");
        } else if (state is ASRegisterError) {
          debugPrintStack(stackTrace: state.stackTrace);
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
        } else {}
      });
    }
  }
}
