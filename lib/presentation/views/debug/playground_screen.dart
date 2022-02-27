// ignore_for_file: prefer_const_constructors
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PlaygroundScreen extends StatelessWidget {
  const PlaygroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LinearGradient gradient = LinearGradient(
      colors: [
        Color(0xff79D2DE),
        Color(0xffFFF4F4),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return BlocProvider(
      create: (context) => ProduceManagerBloc(repository: locator()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: BlocBuilder<ProduceManagerBloc, ProduceManagerState>(
                      builder: (context, state) {
                    if (state is PMSInitial) {
                      return Text("Nothin really.");
                    } else if (state is PMSGetFirstTenProduceLoading) {
                      return CircularProgressIndicator();
                    } else if (state is PMSGetFirstTenProduceSuccess) {
                      return Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            child: SfCartesianChart(
                              plotAreaBorderColor: Colors.transparent,
                              primaryXAxis: NumericAxis(
                                isVisible: false,
                              ),
                              primaryYAxis: NumericAxis(
                                isVisible: false,
                              ),
                              series: <CartesianSeries>[
                                SplineAreaSeries<num, num>(
                                  animationDuration: 1000,
                                  dataSource: state.produceList[0].weeklyPrices,
                                  xValueMapper: (num price, index) => index,
                                  yValueMapper: (num price, index) => price,
                                  borderWidth: 3,
                                  borderColor: Color(0xff79D2DE),
                                  gradient: gradient,
                                ),
                              ],
                            ),
                          ),
                          Text(state.produceList.toString()),
                        ],
                      );
                    } else if (state is PMSGetFirstTenProduceError) {
                      return Text('ERROR! Code: ${state.code}, Message: ${state.message}');
                    } else {
                      return Text('Unknown State: ');
                    }
                  }),
                ),
                UIVerticalSpace30(),
                Container(
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 200,
                    content: "Retrieve List!",
                    onPressed: () {
                      context
                          .read<ProduceManagerBloc>()
                          .add(ProduceManagerEvent.execGetFirstTenProduce());
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class SmallBox extends StatelessWidget {
  const SmallBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
