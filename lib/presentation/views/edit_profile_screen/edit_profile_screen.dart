// ignore_for_file: deprecated_member_use

import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/views/edit_profile_screen/cubit/edit_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../shared_widgets/appbars.dart';
import '../../shared_widgets/texts.dart';
import '../../shared_widgets/ui_helpers.dart';
import '../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import '../../smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';

class EditProfileScreen extends StatefulWidget {
  final FarmhubUser farmhubUser;

  const EditProfileScreen(this.farmhubUser, {Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late int userTypeInt;

  @override
  void initState() {
    super.initState();

    userTypeInt = widget.farmhubUser.userType.typeAsInt;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FirstTwoFieldsFormBloc>(
          create: (context) => MultipleFieldsFormBloc(
            firstFieldValue: widget.farmhubUser.username,
          ),
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
                leadingIcon: const Icon(Icons.close),
                leadingOnPressed: () => Navigator.of(context).pop(),
              ),
              body: SafeArea(
                top: false,
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Headline1('Edit Profile'),
                            ],
                          ),
                        ),
                        const UICustomVertical(60),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: MultipleFieldsForm<FirstTwoFieldsFormBloc>(
                            type: MultipleFieldsFormType.oneField,
                            firstFieldLabel: 'Username',
                            firstFieldHintText: 'Enter your desired username',
                            validateFirstField: validateUsername,
                          ),
                        ),
                        const UIVerticalSpace14(),
                        Container(
                          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 14),
                          child: Text(
                            "User Type",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: ToggleSwitch(
                            minWidth: 110,
                            totalSwitches: 3,
                            animate: true,
                            animationDuration: 100,
                            initialLabelIndex: userTypeInt,
                            labels: ['Regular', 'Farmer', 'Business'],
                            onToggle: (index) {
                              setState(() {
                                userTypeInt = index!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Container(
                      constraints: const BoxConstraints.expand(),
                      alignment: Alignment.bottomCenter,
                      child: PrimaryButtonAware(
                        firstPageContent: 'Confirm',
                        firstPageButtonIcon: const Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                        firstPageOnPressed: () {
                          context.read<EditProfileCubit>().checkUserTypeChange(
                                context,
                                returnTypeFromInt(userTypeInt),
                                widget.farmhubUser,
                              );
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
