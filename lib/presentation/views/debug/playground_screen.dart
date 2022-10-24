import 'package:farmhub/core/auth/auth_bloc/auth_bloc.dart';
import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
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
import 'package:farmhub/presentation/views/debug/cubit/playground_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../shared_widgets/toasts.dart';

final user = FarmhubUser(
  uid: "uid",
  email: "email",
  username: "username",
  createdAt: "createdAt",
  produceFavoritesList: [],
  userType: UserType.regular,
);

const farmToEdit = Farm(
  creatorUserId: "BXF8kvBSTZAGjnSgT8iSE1Lh8lA5",
  farmId: "Gso3a0knrXkZBbDNjtLM",
  farmName: "Rockmelon Selayang",
  address: Address(
      rawAddress: "rawAddress",
      addressLine: "1st Mayhingway Street",
      city: "Gumalia",
      state: "Lyria",
      postcode: 254600),
);

const shop = Shop(
  creatorUserId: "BXF8kvBSTZAGjnSgT8iSE1Lh8lA5",
  shopId: "8FxdKadY0TACebcJxPsb",
  shopName: "Shopping Endeavor",
  address: Address(
      rawAddress: "rawAddress",
      addressLine: "1st Mayhingway Street",
      city: "Gumalia",
      state: "Lyria",
      postcode: 254600),
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
  userFarms: [farmToEdit],
  userShops: [shop],
);

class PlaygroundScreen extends StatefulWidget {
  final IAuthLocalDataSource authLocalDataSource;
  final IAuthRemoteDataSource authRemote;

  const PlaygroundScreen({
    Key? key,
    required this.authLocalDataSource,
    required this.authRemote,
  }) : super(key: key);

  @override
  State<PlaygroundScreen> createState() => _PlaygroundScreenState();
}

class _PlaygroundScreenState extends State<PlaygroundScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProduceManagerBloc(repository: locator())),
        BlocProvider(
            create: (context) => AuthBloc(
                  authRepository: locator(),
                  globalAuthCubit: locator(),
                  firebaseAuth: locator(),
                )),
        BlocProvider(
            create: (context) => PlaygroundCubit(
                  repository: locator(),
                  firebaseFirestore: locator(),
                ))
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: ListView(
              children: [
                const UIVerticalSpace14(),
                const UIBorder(),
                const UIVerticalSpace14(),
                Container(
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Create Farm Screen",
                    onPressed: () async {
                      Navigator.of(context).pushNamed('/create_farm');
                    },
                  ),
                ),
                const UIVerticalSpace14(),
                Container(
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Create Shop Screen",
                    onPressed: () async {
                      Navigator.of(context).pushNamed('/create_shop');
                    },
                  ),
                ),
                const UIVerticalSpace14(),
                Container(
                  alignment: Alignment.center,
                  child: SecondaryButton(
                    width: 200,
                    content: "Edit Farm Screen",
                    onPressed: () async {
                      Navigator.of(context).pushNamed('/edit_farm', arguments: farmToEdit);
                    },
                  ),
                ),
                const UIVerticalSpace14(),
                Container(
                  alignment: Alignment.center,
                  child: SecondaryButton(
                    width: 200,
                    content: "Edit Shop Screen",
                    onPressed: () async {
                      Navigator.of(context).pushNamed('/edit_shop', arguments: shop);
                    },
                  ),
                ),
                const UIVerticalSpace14(),
                Container(
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Update FarmID",
                    onPressed: () async {
                      context.read<PlaygroundCubit>().updateFarmId();
                    },
                  ),
                ),
                const UIVerticalSpace30(),
                const UIBorder(),
                const UIVerticalSpace30(),
                BlocBuilder<ProduceManagerBloc, ProduceManagerState>(builder: (context, state) {
                  if (state is PMSInitial) {
                    return const Text("Nothin really.");
                  } else if (state is PMSGetFirstTenProduceLoading) {
                    return const CupertinoActivityIndicator();
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
                    return const Text('Unknown State: ');
                  }
                }),
                const UIVerticalSpace30(),
                Container(
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 200,
                    content: "Retrieve List!",
                    onPressed: () {
                      context
                          .read<ProduceManagerBloc>()
                          .add(const ProduceManagerEvent.execGetFirstTenProduce());
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 14, bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 270,
                    content: "Retrieve and Update User",
                    onPressed: () async {
                      context.read<AuthBloc>().add(const AuthEvent.execRetrieveUserData());

                      if (!mounted) return;
                      await context.read<GlobalAuthCubit>().updateGlobalAuthCubit();
                    },
                  ),
                ),
                BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                  if (state is ASInitial) {
                    return const Text('Nothing really.');
                  } else if (state is ASRetrieveUserDataLoading) {
                    return const CupertinoActivityIndicator();
                  } else if (state is ASRetrieveUserDataSuccess) {
                    return Text(state.farmhubUser.toString());
                  } else if (state is ASRetrieveUserDataError) {
                    return Text('ERROR! Code: ${state.code}, Message: ${state.message}');
                  } else {
                    return Text("Unexpected State by AuthBloc! - $state");
                  }
                }),
                Container(
                  padding: const EdgeInsets.only(top: 14, bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Show snackbar!",
                    onPressed: () {
                      showTopSnackBar(
                        context,
                        const CustomSnackBar.info(message: "Test!"),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 200,
                    content: "Show Toast",
                    onPressed: () {
                      showToastWidget(
                        const ErrorToast(),
                        context: context,
                        animation: StyledToastAnimation.slideFromTopFade,
                        reverseAnimation: StyledToastAnimation.slideToTopFade,
                        position: StyledToastPosition.top,
                        animDuration: const Duration(milliseconds: 800),
                        curve: Curves.easeOutExpo,
                        reverseCurve: Curves.easeInExpo,
                        duration: const Duration(seconds: 5),
                      );
                    },
                  ),
                ),
                const UIBorder(),
                Container(
                  padding: const EdgeInsets.only(top: 14, bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Debug for Farm",
                    onPressed: () {
                      final Farm farm = Farm(
                        creatorUserId: context.read<GlobalAuthCubit>().state.farmhubUser!.uid,
                        farmId: 'UNKNOWN',
                        farmName: "Fake Farm",
                        address: const Address(
                            rawAddress: "rawAddress",
                            addressLine: "1st Mayhingway Street",
                            city: "Gumalia",
                            state: "Lyria",
                            postcode: 254600),
                      );

                      prettyPrintJson(farm.toJson());
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Debug FarmhubUser",
                    onPressed: () {
                      final userShopFromJson = Shop.fromJson((farmer.toJson())["shopList"][0]);

                      prettyPrintJson(farmer.toJson());
                      debugPrint(userShopFromJson.toString());
                    },
                  ),
                ),
                const UIVerticalSpace14(),
                const UIBorder(),
                Container(
                  padding: const EdgeInsets.only(top: 14, bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Store Farmer",
                    onPressed: () async {
                      await widget.authLocalDataSource.storeFarmhubUser(farmer);
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Retrieve Farmer",
                    onPressed: () async {
                      final result = await widget.authLocalDataSource.retrieveFarmhubUser();

                      debugPrint(result.toString());
                      prettyPrintJson(result.toJson());
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 14),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    width: 250,
                    content: "Try retrieve user",
                    onPressed: () async {
                      final result = await widget.authRemote.retrieveUserData(uid: "8989");

                      prettyPrintJson(result.toJson());
                    },
                  ),
                ),
                const UICustomVertical(200),
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
