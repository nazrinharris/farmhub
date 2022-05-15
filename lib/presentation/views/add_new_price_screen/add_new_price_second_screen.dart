import 'package:farmhub/app_router.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card/produce_list_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';

import '../../../core/util/misc.dart';
import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../shared_widgets/appbars.dart';
import '../../shared_widgets/texts.dart';
import '../../shared_widgets/ui_helpers.dart';
import '../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import 'bloc/add_new_price_screen_bloc.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AddNewPriceSecondScreen extends StatefulWidget {
  final ProduceArguments produceArguments;

  const AddNewPriceSecondScreen(this.produceArguments, {Key? key}) : super(key: key);

  @override
  State<AddNewPriceSecondScreen> createState() => _AddNewPriceSecondScreenState();
}

class _AddNewPriceSecondScreenState extends State<AddNewPriceSecondScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusScope.of(context).unfocus();
        return true;
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MultipleFieldsFormBloc(),
          ),
          BlocProvider(
            create: (context) => PrimaryButtonAwareCubit(),
          ),
        ],
        child: Builder(builder: (context) {
          return BlocProvider(
            create: (context) => AddNewPriceScreenBloc(
              produceManagerRepository: locator(),
              multipleFieldsFormBloc: context.read<MultipleFieldsFormBloc>(),
              primaryButtonAwareCubit: context.read<PrimaryButtonAwareCubit>(),
            ),
            child: Builder(
              builder: (context) {
                return BlocListener<AddNewPriceScreenBloc, AddNewPriceScreenState>(
                  listener: (context, state) {
                    if (state is ANPSAddNewPriceError) {
                      showTopSnackBar(
                        context,
                        CustomSnackBar.error(
                            message:
                                "Uh oh! An error occured. Code: ${state.failure.code}, Message: ${state.failure.message}"),
                      );
                      print(state.failure);
                      print(state.failure.stackTrace);
                    } else if (state is ANPSAddNewPriceSuccess) {
                      showTopSnackBar(
                        context,
                        CustomSnackBar.success(
                          message:
                              "Price of RM${context.read<MultipleFieldsFormBloc>().state.props.firstFieldValue} is succesfully added to ${state.produce.produceName}",
                        ),
                      );
                      Navigator.of(context).pushNamed(
                        '/add_new_price_third',
                        arguments: ProduceArguments(
                          state.produce,
                          isFromSearch: widget.produceArguments.isFromSearch,
                        ),
                      );
                    }
                  },
                  child: Scaffold(
                    // resizeToAvoidBottomInset: false,
                    extendBodyBehindAppBar: true,
                    appBar: DefaultAppBar(
                      leadingIcon: const Icon(Icons.arrow_back),
                      leadingOnPressed: () {
                        FocusScope.of(context).unfocus();
                        Navigator.of(context).pop();
                      },
                    ),
                    body: SafeArea(
                      top: false,
                      child: Stack(
                        children: [
                          CustomScrollView(
                            slivers: [
                              HeaderSliver(widget.produceArguments.produce),
                              const ContentSliver(),
                              const SliverWhiteSpace(100)
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: PrimaryButtonAware(
                              firstPageContent: 'Continue',
                              firstPageOnPressed: () => context
                                  .read<AddNewPriceScreenBloc>()
                                  .add(AddNewPriceScreenEvent.execAddNewPrice(
                                    produce: widget.produceArguments.produce,
                                  )),
                              type: PrimaryButtonAwareType.onePage,
                              width: 200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}

class HeaderSliver extends StatelessWidget {
  final Produce produce;

  const HeaderSliver(this.produce, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num currentProducePrice = produce.currentProducePrice["price"];
    currentProducePrice = roundNum(currentProducePrice.toDouble(), 2);

    dynamic previousProducePrice;
    if (produce.previousProducePrice["price"] == null) {
      previousProducePrice = "-.--";
    } else {
      previousProducePrice = produce.previousProducePrice["price"] as num;
      previousProducePrice = roundNum(previousProducePrice.toDouble(), 2);
    }

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UITopPadding(),
                Text(
                  "You have chosen:",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const UIVerticalSpace6(),
                Headline2(produce.produceName),
                const UIVerticalSpace14(),
                ChangeBox(produce),
                const UIVerticalSpace24(),
                const UIBorder(),
                const UIVerticalSpace24(),
                Text("Current Price: RM$currentProducePrice/kg"),
                Text("Previous Price: RM$previousProducePrice/kg"),
                const UIVerticalSpace24(),
                const UIBorder(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContentSliver extends StatelessWidget {
  const ContentSliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MultipleFieldsForm<MultipleFieldsFormBloc>(
                  type: MultipleFieldsFormType.twoField,
                  firstFieldLabel: "Price (in RM/kg)",
                  firstFieldHintText: "What's the new price?",
                  firstFieldInputType: resolveInputType(),
                  validateFirstField: validateCurrentPrice,
                  secondFieldLabel: "Days from Now",
                  secondFieldHintText: "Must be a number; (0) for today",
                  secondFieldInputType: resolveInputType(),
                  validateSecondField: validateCurrentPrice,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String? validateCurrentPrice(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a value';
    } else if (double.tryParse(value) == null) {
      return 'Please enter a valid number: e.g. 12.80';
    } else if (double.tryParse(value)! < 0) {
      return 'A negative price is invalid';
    }
  }

  TextInputType resolveInputType() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return const TextInputType.numberWithOptions(decimal: true, signed: true);
    } else {
      return const TextInputType.numberWithOptions(decimal: true);
    }
  }
}

class SliverWhiteSpace extends StatelessWidget {
  final double height;

  const SliverWhiteSpace(this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        SizedBox(
          height: height,
        )
      ]),
    );
  }
}
