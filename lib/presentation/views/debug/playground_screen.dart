// ignore_for_file: prefer_const_constructors
import 'package:farmhub/core/auth/auth_bloc/auth_bloc.dart';
import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/util/printer.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/address/address.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

final user = FarmhubUser(
  uid: "uid",
  email: "email",
  username: "username",
  createdAt: "createdAt",
  produceFavoritesList: [],
  userType: UserType.regular,
);

final farmer = FarmhubUser.farmer(
  uid: "uid",
  email: "email",
  username: "username",
  createdAt: "createdAt",
  produceFavoritesList: [
    ProduceFavorite(produceId: "produceId", dateAdded: DateTime.now()),
  ],
  userType: UserType.farmer,
  farmList: [
    Farm(
      creatorUserId: "creatorUserId",
      farmId: "farmId",
      farmName: "farmName",
      address: Address(rawAddress: "rawAddress"),
    ),
  ],
  shopList: [
    Shop(
      creatorUserId: "creatorUserId",
      shopId: "shopId",
      shopName: "shopName",
      address: Address(rawAddress: "rawAddress"),
    ),
  ],
);

class PlaygroundScreen extends StatelessWidget {
  final IAuthLocalDataSource authLocalDataSource;

  const PlaygroundScreen({Key? key, required this.authLocalDataSource}) : super(key: key);

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
                    content: "Debug for Farm",
                    onPressed: () {
                      final Farm farm = Farm(
                        creatorUserId: context.read<GlobalAuthCubit>().state.farmhubUser!.uid,
                        farmId: 'UNKNOWN',
                        farmName: "Fake Farm",
                        address: Address(rawAddress: "7th Street of Mayhingway"),
                      );

                      print(farm.toJson());
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Debug FarmhubUser",
                    onPressed: () {
                      final userFarmFromJson = Shop.fromJson((farmer.toJson())["shopList"][0]);

                      prettyPrintJson(farmer.toJson());
                      print(userFarmFromJson);
                    },
                  ),
                ),
                UIVerticalSpace14(),
                UIBorder(),
                Container(
                  padding: EdgeInsets.only(top: 14, bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Store Farmer",
                    onPressed: () async {
                      await authLocalDataSource.storeFarmhubUser(farmer);
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Retrieve Farmer",
                    onPressed: () async {
                      final result = await authLocalDataSource.retrieveFarmhubUser();

                      print(result);
                      prettyPrintJson(result.toJson());
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
