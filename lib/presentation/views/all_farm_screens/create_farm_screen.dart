import 'package:farmhub/core/util/farmhub_icons.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';
import 'package:farmhub/presentation/views/all_farm_screens/cubit/farm_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../locator.dart';
import '../../shared_widgets/appbars.dart';
import '../../shared_widgets/texts.dart';
import '../../shared_widgets/ui_helpers.dart';
import '../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import '../../smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';

class CreateFarmScreen extends StatefulWidget {
  const CreateFarmScreen({Key? key}) : super(key: key);

  @override
  State<CreateFarmScreen> createState() => _CreateFarmScreenState();
}

class _CreateFarmScreenState extends State<CreateFarmScreen> {
  late FocusNode farmNameFocusNode;
  late FocusNode firstAddressFocusNode;

  @override
  void initState() {
    super.initState();

    farmNameFocusNode = FocusNode();
    firstAddressFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FirstTwoFieldsFormBloc>(
          create: (context) => MultipleFieldsFormBloc(
            onSubmitFirstField: () {
              firstAddressFocusNode.requestFocus();
            },
          ),
        ),
        BlocProvider<SecondTwoFieldsFormBloc>(
          create: (context) => MultipleFieldsFormBloc(
            firstFieldFocusNode: firstAddressFocusNode,
          ),
        ),
        BlocProvider(create: (context) => PrimaryButtonAwareCubit())
      ],
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => FarmScreenCubit(
            firstTwoFieldsFormBloc: context.read<FirstTwoFieldsFormBloc>(),
            secondTwoFieldsFormBloc: context.read<SecondTwoFieldsFormBloc>(),
            buttonAwareCubit: context.read<PrimaryButtonAwareCubit>(),
            farmShopManagerRepository: locator(),
          ),
          child: Builder(builder: (context) {
            return BlocListener<FarmScreenCubit, FarmScreenState>(
              listener: (context, state) {
                reactToFarmScreenCubit(context, state);
              },
              child: Scaffold(
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
                        physics: DefaultScrollPhysics,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const UIVerticalSpace14(),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 7),
                                  child: Icon(FarmhubIcons.farmhub_corn_icon, size: 34),
                                ),
                                const UIVerticalSpace14(),
                                const Headline1('Create a Farm'),
                              ],
                            ),
                          ),
                          const UIVerticalSpace30(),
                          const UIBorder(opacity: 0.1),
                          const UIVerticalSpace30(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: MultipleFieldsForm<FirstTwoFieldsFormBloc>(
                              type: MultipleFieldsFormType.oneField,
                              firstFieldLabel: 'Farm Name',
                              firstFieldHintText: 'Enter the name of your farm',
                              validateFirstField: validateFarmName,
                            ),
                          ),
                          const UIVerticalSpace14(),
                          const UIBorder(opacity: 0.1),
                          const UIVerticalSpace24(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: MultipleFieldsForm<SecondTwoFieldsFormBloc>(
                              type: MultipleFieldsFormType.fourField,
                              firstFieldLabel: "Address Line",
                              firstFieldHintText: "Enter your farm's address line",
                              validateFirstField: validateAddress,
                              secondFieldLabel: "City",
                              secondFieldHintText: "Enter your farm's city",
                              validateSecondField: validateCity,
                              thirdFieldLabel: "State",
                              thirdFieldHintText: "Enter your farm's state, e.g Selangor",
                              validateThirdField: validateState,
                              fourthFieldLabel: "Postcode",
                              fourthFieldHintText: "Enter your farm's postcode, e.g 43200",
                              validateFourthField: validatePostcode,
                            ),
                          ),
                          const UICustomVertical(400),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 24),
                        constraints: const BoxConstraints.expand(),
                        alignment: Alignment.bottomCenter,
                        child: PrimaryButtonAware(
                          firstPageContent: 'Confirm',
                          firstPageButtonIcon: const Icon(Icons.done, color: Colors.white),
                          firstPageOnPressed: () async {
                            await context.read<FarmScreenCubit>().createFarm(context);
                          },
                          type: PrimaryButtonAwareType.onePage,
                          width: 200,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        );
      }),
    );
  }

  void reactToFarmScreenCubit(BuildContext context, FarmScreenState state) {
    if (state is CreateFarmSuccess) {
      context.read<PrimaryButtonAwareCubit>().triggerFirstPage();
      context.read<GlobalUICubit>().setShouldRefreshProfile(true);
      Navigator.of(context).pop();
    } else if (state is CreateFarmError) {
      debugPrint(state.failure.toString());
      context.read<PrimaryButtonAwareCubit>().triggerFirstPage();
      showErrorDialog(context: context, failure: state.failure);
    }
  }

  String? validateFarmName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a name';
    } else if (value.length <= 2) {
      return 'Names must be at least 3 characters';
    } else {
      return null;
    }
  }

  String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an address line';
    } else if (value.length <= 2) {
      return 'Address lines must be at least 3 characters';
    } else {
      return null;
    }
  }

  String? validateCity(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a city';
    } else {
      return null;
    }
  }

  String? validateState(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a state';
    } else {
      return null;
    }
  }

  String? validatePostcode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a postcode';
    } else if (int.tryParse(value) == null) {
      return 'Please enter a valid postcode';
    } else {
      return null;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
