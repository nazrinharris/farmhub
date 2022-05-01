import 'package:farmhub/app_router.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';

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
                              "Price of RM${state.produce.currentProducePrice["price"]} is succesfully added to ${state.produce.produceName}",
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
                    resizeToAvoidBottomInset: false,
                    extendBodyBehindAppBar: true,
                    appBar: DefaultAppBar(
                      trailingIcon: const Icon(Icons.arrow_back),
                      trailingOnPressed: () {
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
                              ContentSliver(),
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
                const Headline1('You have chosen:'),
                const UIVerticalSpace14(),
                Headline2(produce.produceName),
                const UIVerticalSpace14(),
                ChangeBox(produce),
                const UIVerticalSpace24(),
                const UIBorder(),
                const UIVerticalSpace24(),
                Text("Current Price: RM${produce.currentProducePrice["price"]}/kg"),
                Text(resolvePreviousPriceText(produce)),
                const UIVerticalSpace24(),
                const UIBorder(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String resolvePreviousPriceText(Produce produce) {
    if (produce.previousProducePrice["price"] == null) {
      return "Previous Price: RM-.--";
    } else {
      return "Previous Price: RM${produce.previousProducePrice["price"]}/kg";
    }
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
                  type: MultipleFieldsFormType.oneField,
                  firstFieldLabel: "Price (in RM/kg)",
                  firstFieldHintText: "What's the new price?",
                  validateFirstField: validateCurrentPrice,
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
}
