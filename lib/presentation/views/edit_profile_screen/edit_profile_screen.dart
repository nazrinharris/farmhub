// ignore_for_file: prefer_const_constructors

import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';
import 'package:farmhub/presentation/views/edit_profile_screen/cubit/edit_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared_widgets/appbars.dart';
import '../../shared_widgets/texts.dart';
import '../../shared_widgets/ui_helpers.dart';
import '../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import '../../smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FirstTwoFieldsFormBloc>(
          create: (context) => MultipleFieldsFormBloc(),
        ),
        BlocProvider(create: (context) => PrimaryButtonAwareCubit()),
      ],
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => EditProfileCubit(
            globalAuthCubit: locator(),
            authRepository: locator(),
            globalUICubit: locator(),
            primaryButtonAwareCubit: context.read<PrimaryButtonAwareCubit>(),
            formBloc: context.read<FirstTwoFieldsFormBloc>(),
          ),
          child: Builder(builder: (context) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              extendBodyBehindAppBar: true,
              appBar: DefaultAppBar(
                leadingIcon: Icon(Icons.close),
                leadingOnPressed: () => Navigator.of(context).pop(),
              ),
              body: SafeArea(
                top: false,
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Headline1('Edit Profile'),
                            ],
                          ),
                        ),
                        UICustomVertical(60),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: MultipleFieldsForm<FirstTwoFieldsFormBloc>(
                            type: MultipleFieldsFormType.oneField,
                            firstFieldLabel: 'New Username',
                            firstFieldHintText: 'Enter your desired username',
                            validateFirstField: validateUsername,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      constraints: BoxConstraints.expand(),
                      alignment: Alignment.bottomCenter,
                      child: PrimaryButtonAware(
                        firstPageContent: 'Confirm',
                        firstPageButtonIcon: Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                        firstPageOnPressed: () {
                          context.read<EditProfileCubit>().execEditProfile(context);
                        },
                        type: PrimaryButtonAwareType.onePage,
                        width: 200,
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        );
      }),
    );
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
