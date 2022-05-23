// ignore_for_file: prefer_const_constructors
import 'package:farmhub/core/auth/auth_bloc/auth_bloc.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

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

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProduceManagerBloc(repository: locator())),
        BlocProvider(
            create: (context) => AuthBloc(authRepository: locator(), globalAuthCubit: locator())),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: ListView(
              children: [
                Container(
                  child: BlocBuilder<ProduceManagerBloc, ProduceManagerState>(
                      builder: (context, state) {
                    if (state is PMSInitial) {
                      return Text("Nothin really.");
                    } else if (state is PMSGetFirstTenProduceLoading) {
                      return CupertinoActivityIndicator();
                    } else if (state is PMSGetFirstTenProduceSuccess) {
                      return Column(
                        children: [
                          // Container(
                          //   height: 200,
                          //   width: 200,
                          //   child: SfCartesianChart(
                          //     plotAreaBorderColor: Colors.transparent,
                          //     primaryXAxis: NumericAxis(
                          //       isVisible: false,
                          //     ),
                          //     primaryYAxis: NumericAxis(
                          //       isVisible: false,
                          //     ),
                          //     series: <CartesianSeries>[
                          //       SplineAreaSeries<num, num>(
                          //         animationDuration: 1000,
                          //         dataSource: state.produceList[0].weeklyPrices,
                          //         xValueMapper: (num price, index) => index,
                          //         yValueMapper: (num price, index) => price,
                          //         borderWidth: 3,
                          //         borderColor: Color(0xff79D2DE),
                          //         gradient: gradient,
                          //       ),
                          //     ],
                          //   ),
                          // ),
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
                Container(
                  padding: EdgeInsets.only(top: 14, bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Retrieve User Data!",
                    onPressed: () {
                      context.read<AuthBloc>().add(AuthEvent.execRetrieveUserData());
                    },
                  ),
                ),
                Container(
                  child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                    if (state is ASInitial) {
                      return Text('Nothing really.');
                    } else if (state is ASRetrieveUserDataLoading) {
                      return CupertinoActivityIndicator();
                    } else if (state is ASRetrieveUserDataSuccess) {
                      return Text(state.farmhubUser.toString());
                    } else if (state is ASRetrieveUserDataError) {
                      return Text('ERROR! Code: ${state.code}, Message: ${state.message}');
                    } else {
                      return Text("Unexpected State by AuthBloc! - $state");
                    }
                  }),
                ),
                Container(
                  padding: EdgeInsets.only(top: 14, bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Show snackbar!",
                    onPressed: () {
                      showTopSnackBar(
                        context,
                        CustomSnackBar.info(message: "Test!"),
                      );
                    },
                  ),
                ),
                UIBorder(),
                Container(
                  padding: EdgeInsets.only(top: 14, bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Retrieve first 10 produce!",
                    onPressed: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Retrieve next 10 produce!",
                    onPressed: () {},
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
