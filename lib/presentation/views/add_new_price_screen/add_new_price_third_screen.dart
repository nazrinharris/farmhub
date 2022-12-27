// ignore_for_file: unused_import

import 'package:farmhub/app_router.dart';
import 'package:farmhub/core/util/misc.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/texts.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card/produce_list_card.dart';
import 'package:farmhub/presentation/views/add_new_price_screen/bloc/add_new_price_screen_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/large_price_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../features/produce_manager/domain/entities/produce/produce.dart';

class AddNewPriceThirdScreen extends StatelessWidget {
  final AddNewPriceScreenArguments arguments;

  const AddNewPriceThirdScreen(this.arguments, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocProvider(
        create: (_) => AddNewPriceScreenBloc(
          produceManagerRepository: locator(),
        ),
        child: Builder(
          builder: (context) {
            num currentProducePrice = arguments.produce.currentProducePrice["price"];
            currentProducePrice = roundNum(currentProducePrice.toDouble(), 2);

            dynamic previousProducePrice;
            if (arguments.produce.previousProducePrice["price"] == null) {
              previousProducePrice = "-.--";
            } else {
              previousProducePrice = arguments.produce.previousProducePrice["price"] as num;
              previousProducePrice = roundNum(previousProducePrice.toDouble(), 2);
            }

            return Scaffold(
              resizeToAvoidBottomInset: false,
              extendBodyBehindAppBar: true,
              appBar: DefaultAppBar(
                leadingIcon: const Icon(Icons.close),
                leadingOnPressed: () {
                  popToMainOrProduceAndRefresh(context);
                },
              ),
              body: SafeArea(
                top: false,
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        const UITopPadding(),
                        const UIVerticalSpace30(),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                          child: Headline1(arguments.produce.produceName),
                        ),
                        ChangeBox(
                          arguments.produce,
                          alignment: Alignment.center,
                        ),
                        const UIVerticalSpace14(),
                        const UIBorder(margin: EdgeInsets.symmetric(horizontal: 24)),
                        const UIVerticalSpace14(),
                        Column(
                          children: [
                            Text(
                              "Current Price: RM$currentProducePrice/kg",
                            ),
                            Text(
                              "Previous Price: RM$previousProducePrice/kg",
                            ),
                          ],
                        ),
                        const UIVerticalSpace14(),
                        const UIBorder(),
                        const UIVerticalSpace30(),
                        LargePriceChart(arguments.produce, LargePriceChartType.oneW)
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          PrimaryButton(
                            width: 220,
                            content: 'Add another Price',
                            onPressed: () {
                              popToAddNewPrice(context, arguments.produce);
                            },
                          ),
                          const UIVerticalSpace14(),
                          SecondaryButton(
                            content: resolveBackToButton(context),
                            onPressed: () {
                              popToMainOrProduceAndRefresh(context);
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  String resolveBackToButton(BuildContext context) {
    if (arguments.fromRoute == AddNewPriceFromRoute.fromProduceScreen) {
      return "Back to Produce";
    } else {
      return "Back to Home";
    }
  }

  void popToMainAndRefresh(BuildContext context) {
    context.read<GlobalUICubit>().setShouldRefreshMain(true);

    switch (arguments.fromRoute) {
      case AddNewPriceFromRoute.fromAddNewPriceScreen:
        Navigator.of(context)
          ..pop()
          ..pop()
          ..pop();
        break;
      case AddNewPriceFromRoute.fromAddNewPriceSearchScreen:
        Navigator.of(context)
          ..pop()
          ..pop()
          ..pop()
          ..pop();
        break;
      case AddNewPriceFromRoute.fromMainBottomSheet:
        Navigator.of(context)
          ..pop()
          ..pop()
          ..pop();
        break;
      case AddNewPriceFromRoute.fromProduceScreen:
        Navigator.of(context)
          ..pop()
          ..pop();
        break;
      default:
        throw (Exception("Unknown Route, ${StackTrace.current}"));
    }
  }

  void popToMainOrProduceAndRefresh(BuildContext context) {
    context.read<GlobalUICubit>().setShouldRefreshMain(true);

    switch (arguments.fromRoute) {
      case AddNewPriceFromRoute.fromAddNewPriceScreen:
        Navigator.of(context)
          ..pop()
          ..pop()
          ..pop();
        break;
      case AddNewPriceFromRoute.fromAddNewPriceSearchScreen:
        Navigator.of(context)
          ..pop()
          ..pop()
          ..pop()
          ..pop();
        break;
      case AddNewPriceFromRoute.fromMainBottomSheet:
        Navigator.of(context)
          ..pop()
          ..pop()
          ..pop();
        break;
      case AddNewPriceFromRoute.fromProduceScreen:
        context.read<GlobalUICubit>().setShouldRefreshProduce(true);
        Navigator.of(context)
          ..pop()
          ..pop();
        break;
      default:
        throw (Exception("Unknown Route, ${StackTrace.current}"));
    }
  }

  void popToAddNewPrice(BuildContext context, Produce produce) {
    switch (arguments.fromRoute) {
      case AddNewPriceFromRoute.fromAddNewPriceScreen:
        Navigator.of(context)
          ..pop()
          ..pop()
          ..pushNamed(
            '/add_new_price_second',
            arguments: AddNewPriceScreenArguments(
              produce,
              arguments.fromRoute,
            ),
          );
        break;
      case AddNewPriceFromRoute.fromAddNewPriceSearchScreen:
        Navigator.of(context)
          ..pop()
          ..pop()
          ..pop()
          ..pushNamed(
            '/add_new_price_second',
            arguments: AddNewPriceScreenArguments(
              produce,
              arguments.fromRoute,
            ),
          );
        break;
      case AddNewPriceFromRoute.fromMainBottomSheet:
        Navigator.of(context)
          ..pop()
          ..pop()
          ..pop()
          ..pushNamed(
            '/add_new_price_second',
            arguments: AddNewPriceScreenArguments(
              produce,
              arguments.fromRoute,
            ),
          );
        break;
      case AddNewPriceFromRoute.fromProduceScreen:
        Navigator.of(context)
          ..pop()
          ..pop()
          ..pushNamed(
            '/add_new_price_second',
            arguments: AddNewPriceScreenArguments(
              produce,
              arguments.fromRoute,
            ),
          );
        break;
    }
  }
}
