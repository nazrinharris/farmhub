// ignore_for_file: prefer_const_constructors

import 'package:farmhub/presentation/views/all_shop_screens/cubit/shop_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../locator.dart';
import '../../shared_widgets/appbars.dart';
import '../../shared_widgets/scroll_physics.dart';
import '../../shared_widgets/texts.dart';
import '../../shared_widgets/ui_helpers.dart';
import '../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import '../../smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';

class CreateShopScreen extends StatefulWidget {
  const CreateShopScreen({Key? key}) : super(key: key);

  @override
  State<CreateShopScreen> createState() => _CreateShopScreenState();
}

class _CreateShopScreenState extends State<CreateShopScreen> {
  late FocusNode shopNameFocusNode;
  late FocusNode firstAddressFocusNode;

  @override
  void initState() {
    super.initState();

    shopNameFocusNode = FocusNode();
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
          create: (context) => ShopScreenCubit(
            firstTwoFieldsFormBloc: context.read<FirstTwoFieldsFormBloc>(),
            secondTwoFieldsFormBloc: context.read<SecondTwoFieldsFormBloc>(),
            buttonAwareCubit: context.read<PrimaryButtonAwareCubit>(),
            farmShopManagerRepository: locator(),
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
                      physics: DefaultScrollPhysics,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const UIVerticalSpace14(),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7),
                                child: Icon(Icons.store, size: 34),
                              ),
                              const UIVerticalSpace14(),
                              const Headline1('Create a Shop'),
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
                            firstFieldLabel: 'Shop Name',
                            firstFieldHintText: 'Enter the name of your shop',
                            validateFirstField: validateShopName,
                          ),
                        ),
                        const UIVerticalSpace14(),
                        const UIBorder(opacity: 0.1),
                        const UIVerticalSpace24(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: MultipleFieldsForm<SecondTwoFieldsFormBloc>(
                            type: MultipleFieldsFormType.fourField,
                            firstFieldLabel: 'Address Line',
                            firstFieldHintText: 'Enter your shop\'s address line',
                            validateFirstField: validateShopName,
                            secondFieldLabel: 'City',
                            secondFieldHintText: 'Enter your shop\'s city',
                            validateSecondField: validateCity,
                            thirdFieldLabel: 'State',
                            thirdFieldHintText: 'Enter your shop\'s state, e.g Selangor',
                            validateThirdField: validateState,
                            fourthFieldLabel: "Postcode",
                            fourthFieldHintText: "Enter your shop's postcode, e.g 43200",
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
                        firstPageOnPressed: () {
                          context.read<ShopScreenCubit>().createShop(context);
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

  String? validateShopName(String? value) {
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
