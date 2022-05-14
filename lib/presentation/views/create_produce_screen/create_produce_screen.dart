// ignore_for_file: prefer_const_constructors

import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared_widgets/texts.dart';
import '../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import 'bloc/create_produce_screen_bloc.dart';

class CreateProduceScreen extends StatelessWidget {
  const CreateProduceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProduceManagerBloc(repository: locator())),
        BlocProvider<FirstTwoFieldsFormBloc>(
          create: (context) => MultipleFieldsFormBloc(),
        ),
        BlocProvider(create: (context) => PrimaryButtonAwareCubit())
      ],
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (_) => CreateProduceScreenBloc(
            firstTwoFieldsFormBloc: context.read<FirstTwoFieldsFormBloc>(),
            primaryButtonAwareCubit: context.read<PrimaryButtonAwareCubit>(),
            produceManagerBloc: context.read<ProduceManagerBloc>(),
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
                              const Headline1('Create new Produce'),
                            ],
                          ),
                        ),
                        UICustomVertical(60),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: MultipleFieldsForm<FirstTwoFieldsFormBloc>(
                            type: MultipleFieldsFormType.twoField,
                            firstFieldLabel: 'Produce Name',
                            firstFieldHintText: 'Enter the produce name',
                            secondFieldLabel: 'Current Produce Price (/kg)',
                            secondFieldHintText: 'What is the price of it now?',
                            validateFirstField: validateProduceName,
                            validateSecondField: validateCurrentPrice,
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
                          context
                              .read<CreateProduceScreenBloc>()
                              .add(CreateProduceScreenEvent.execCreateNewProduce());
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

  String? validateProduceName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a name';
    } else if (value.length <= 2) {
      return 'Names must be at least 3 characters';
    } else {
      return null;
    }
  }

  String? validateCurrentPrice(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a value';
    } else if (double.tryParse(value) == null) {
      return 'Please enter a valid number: e.g. 12.80';
    } else if (double.tryParse(value)! < 0) {
      return 'A negative price is invalid';
    }
    return null;
  }
}
