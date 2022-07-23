import 'package:farmhub/core/util/farmhub_icons.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/scroll_physics.dart';
import 'package:farmhub/presentation/views/all_farm_screens/cubit/farm_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared_widgets/appbars.dart';
import '../../shared_widgets/texts.dart';
import '../../shared_widgets/ui_helpers.dart';
import '../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import '../../smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';

class EditFarmScreen extends StatefulWidget {
  final Farm farm;

  const EditFarmScreen(this.farm, {Key? key}) : super(key: key);

  @override
  State<EditFarmScreen> createState() => _EditFarmScreenState();
}

class _EditFarmScreenState extends State<EditFarmScreen> {
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
            firstFieldValue: widget.farm.farmName,
            onSubmitFirstField: () {
              firstAddressFocusNode.requestFocus();
            },
          ),
        ),
        BlocProvider<SecondTwoFieldsFormBloc>(
          create: (context) => MultipleFieldsFormBloc(
            firstFieldFocusNode: firstAddressFocusNode,
            firstFieldValue: widget.farm.address.addressLine,
            secondFieldValue: widget.farm.address.city,
            thirdFieldValue: widget.farm.address.state,
            fourthFieldValue: widget.farm.address.postcode.toString(),
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
            return Scaffold(
              resizeToAvoidBottomInset: false,
              extendBodyBehindAppBar: true,
              appBar: DefaultAppBar(
                leadingIcon: const Icon(Icons.close),
                leadingOnPressed: () => Navigator.of(context).pop(),
                trailingIcon: const Icon(Icons.more, color: Colors.transparent),
                title: "Edit Farm",
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
                                child: Icon(FarmhubIcons.farmhub_corn_icon, size: 34),
                              ),
                              const UIVerticalSpace14(),
                              Text("Editing:", style: Theme.of(context).textTheme.headline1!),
                              Headline2(widget.farm.farmName),
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
                            firstFieldLabel: 'Address Line',
                            firstFieldHintText: 'Enter your farm\'s address line',
                            validateFirstField: validateAddress,
                            secondFieldLabel: 'City',
                            secondFieldHintText: 'Enter your farm\'s city',
                            validateSecondField: validateCity,
                            thirdFieldLabel: 'State',
                            thirdFieldHintText: 'Enter your farm\'s state, e.g Selangor',
                            validateThirdField: validateState,
                            fourthFieldLabel: "Postcode",
                            fourthFieldHintText: "Enter your farm\'s postcode, e.g 43200",
                            validateFourthField: validatePostcode,
                          ),
                        ),
                        const UICustomVertical(400),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 24),
                      constraints: BoxConstraints.expand(),
                      alignment: Alignment.bottomCenter,
                      child: PrimaryButtonAware(
                        firstPageContent: 'Confirm',
                        firstPageButtonIcon: Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                        firstPageOnPressed: () {
                          context.read<FarmScreenCubit>().updateFarm(context, widget.farm);
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
