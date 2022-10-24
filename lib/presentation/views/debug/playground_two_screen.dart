import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/views/debug/cubit/playground_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

class PlaygroundTwoScreen extends StatelessWidget {
  const PlaygroundTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlaygroundCubit(
        repository: locator(),
        firebaseFirestore: locator(),
      ),
      child: Builder(builder: (context) {
        return BlocBuilder<PlaygroundCubit, PlaygroundState>(
          builder: (context, state) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PrimaryButton(
                      buttonIcon: const Icon(Icons.print),
                      content: "short",
                      onPressed: () {
                        const phone = PhoneNumber(isoCode: IsoCode.US, nsn: "7176768765");

                        debugPrint(phone.toString());
                      },
                    ),
                    const UIVerticalSpace30(),
                    SecondaryButton(
                      buttonIcon: const Icon(Icons.print),
                      content: "super flippin long",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              // body: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Center(
              //       child: PrimaryButton(
              //         width: 200,
              //         content: "Create Produce",
              //         onPressed: () {
              //           context.read<PlaygroundCubit>().createProduce(
              //                 produceName: "Beijing Cabbage",
              //                 currentProducePrice: 99,
              //               );
              //         },
              //       ),
              //     ),
              //     UIVerticalSpace6(),
              //     Center(
              //       child: PrimaryButton(
              //         width: 200,
              //         content: "Add New Price",
              //         onPressed: () {
              //           context.read<PlaygroundCubit>().addNewPrice(
              //                 produceId: "M0EDrwfr8LGQc7EAQaR8",
              //                 currentPrice: 21,
              //               );
              //         },
              //       ),
              //     ),
              //     UIVerticalSpace6(),
              //     Center(
              //       child: PrimaryButton(
              //         width: 200,
              //         content: "Run Debug",
              //         onPressed: () {
              //           context.read<PlaygroundCubit>().debugMethod(
              //                 produceId: "M0EDrwfr8LGQc7EAQaR8",
              //               );
              //         },
              //       ),
              //     ),
              //     UIVerticalSpace24(),
              //     if (state is Error)
              //       Container(
              //         child: Text(state.failure.toString()),
              //       ),
              //     if (state is GetPricesCompleted) SizedBox.shrink(),
              //     UIVerticalSpace14(),
              //     Center(
              //       child: PrimaryButton(
              //         width: 200,
              //         content: "Get Two Weeks",
              //         onPressed: () {
              //           context
              //               .read<PlaygroundCubit>()
              //               .getTwoWeeksPrices(produceId: "3Wwn4LGLbbgtftX7MDNs");
              //         },
              //       ),
              //     ),
              //     UIVerticalSpace14(),
              //     Center(
              //       child: PrimaryButton(
              //         width: 200,
              //         content: "Create Random",
              //         onPressed: () {
              //           context.read<PlaygroundCubit>().createMorePrices(
              //                 pricesAmount: 365,
              //                 produceId: "oGItJKKddeuyv6Z1fzDC",
              //               );
              //         },
              //       ),
              //     ),
              //     UIVerticalSpace14(),
              //     Center(
              //       child: PrimaryButton(
              //         width: 200,
              //         content: "Get Produce",
              //         onPressed: () {
              //           context
              //               .read<PlaygroundCubit>()
              //               .retrieveProduce(produceId: "WBOIwlizkFZkaokHv7OK");
              //         },
              //       ),
              //     ),
              //     UIVerticalSpace14(),
              //     Center(
              //       child: PrimaryButton(
              //         width: 200,
              //         content: "Get Price",
              //         onPressed: () {
              //           context.read<PlaygroundCubit>().getPrice(
              //                 produceId: "WBOIwlizkFZkaokHv7OK",
              //                 priceId: "VnvECcHslrAsOEiWnGwc",
              //               );
              //         },
              //       ),
              //     ),
              //     UIVerticalSpace14(),
              //     Center(
              //       child: PrimaryButton(
              //         width: 200,
              //         content: "Delete subPrice",
              //         onPressed: () {
              //           context.read<PlaygroundCubit>().deletePriceFromAggregate(
              //                 produceId: "4pfZr3GSkFilgggKlowp",
              //                 chosenDate: "22-05-2022",
              //                 chosenYear: "2022",
              //               );
              //         },
              //       ),
              //     ),
              //     UIVerticalSpace14(),
              //     Center(
              //       child: PrimaryButton(
              //         width: 200,
              //         content: "Add to Fav",
              //         onPressed: () async {
              //           await repository
              //               .addToFavorites(user, "FS4MgEEIXsDHKS0gR0ih")
              //               .then((foldThis) {
              //             foldThis.fold(
              //               (l) => print(l),
              //               (r) => null,
              //             );

              //             FarmhubUser user = context.read<GlobalAuthCubit>().state.farmhubUser!;

              //             print("After adding favorite");
              //             print(user.produceFavoritesList);
              //           });
              //         },
              //       ),
              //     ),
              //     UIVerticalSpace14(),
              //     Center(
              //       child: PrimaryButton(
              //         width: 200,
              //         content: "Remove from Fav",
              //         onPressed: () async {
              //           await repository
              //               .removeFromFavorites(user, "FS4MgEEIXsDHKS0gR0ih")
              //               .then((foldThis) {
              //             foldThis.fold(
              //               (f) => print(f),
              //               (r) => null,
              //             );

              //             FarmhubUser user = context.read<GlobalAuthCubit>().state.farmhubUser!;

              //             print("After removing favorite");
              //             print(user.produceFavoritesList);
              //           });
              //         },
              //       ),
              //     ),
              //   ],
              // ),
            );
          },
        );
      }),
    );
  }
}
