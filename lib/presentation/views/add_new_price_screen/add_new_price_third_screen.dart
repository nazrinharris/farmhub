import 'package:farmhub/app_router.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/texts.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card.dart';
import 'package:farmhub/presentation/views/add_new_price_screen/bloc/add_new_price_screen_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/large_price_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AddNewPriceThirdScreen extends StatelessWidget {
  final ProduceArguments produceArguments;

  const AddNewPriceThirdScreen(this.produceArguments, {Key? key}) : super(key: key);

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
            return Scaffold(
              resizeToAvoidBottomInset: false,
              extendBodyBehindAppBar: true,
              appBar: DefaultAppBar(
                trailingIcon: Icon(Icons.close),
                trailingOnPressed: () {
                  // TODO: Make sure to refresh MainScreen
                  Navigator.of(context)
                    ..pop()
                    ..pop()
                    ..pop()
                    ..pushReplacementNamed('/main');
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
                          child: Headline1(produceArguments.produce.produceName),
                        ),
                        ChangeBox(
                          produceArguments.produce,
                          alignment: Alignment.center,
                        ),
                        const UIVerticalSpace14(),
                        const UIBorder(margin: EdgeInsets.symmetric(horizontal: 24)),
                        const UIVerticalSpace14(),
                        Column(
                          children: [
                            Text(
                              "Current Price: RM${produceArguments.produce.currentProducePrice["price"]}/kg",
                            ),
                            Text(
                              "Previous Price: RM${produceArguments.produce.previousProducePrice["price"]}/kg",
                            ),
                          ],
                        ),
                        const UIVerticalSpace14(),
                        UIBorder(),
                        const UIVerticalSpace30(),
                        LargePriceChart(produceArguments.produce, LargePriceChartType.oneW)
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
                              Navigator.of(context)
                                ..pop()
                                ..pop()
                                ..pop()
                                ..pushNamed('/add_new_price');
                            },
                          ),
                          const UIVerticalSpace14(),
                          SecondaryButton(
                            width: 180,
                            content: "Back to Home",
                            onPressed: () {
                              Navigator.of(context)
                                ..pop()
                                ..pop()
                                ..pop()
                                ..pushReplacementNamed('/main');
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
}
