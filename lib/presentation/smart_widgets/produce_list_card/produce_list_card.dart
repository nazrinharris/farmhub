// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/features/produce_manager/data/repository/produce_manager_helpers.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/themes/farmhub_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../app_router.dart';
import '../../../core/util/misc.dart';
import '../../../features/produce_manager/domain/entities/price/price.dart';
import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../locator.dart';
import '../../shared_widgets/ui_helpers.dart';
import '../produce_dialogs/app_dialogs.dart';
import '../produce_dialogs/produce_dialog_cubit/produce_dialog_cubit.dart';
import 'cubit/produce_list_card_cubit.dart';

/// [index] is only used to decide if the top border should be rendered or not.
/// [0] If the top border should be drawn and all other numbers will not draw it.
class ProduceListCard extends StatelessWidget {
  final int index;
  final Produce produce;
  final Function()? onTap;
  final double? chartAnimationDuration;
  final bool? disableLongPress;

  const ProduceListCard(
    this.index,
    this.produce, {
    Key? key,
    this.onTap,
    this.chartAnimationDuration,
    this.disableLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num currentProducePrice = produce.currentProducePrice["price"];
    currentProducePrice = roundNum(currentProducePrice.toDouble(), 2);
    final bool? isAdmin = context.read<GlobalAuthCubit>().state.isAdmin;
    final bool disableLongPress = this.disableLongPress ?? false;

    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onLongPress: () {
            HapticFeedback.heavyImpact();

            if (disableLongPress) return;

            showProduceBottomActionSheet(context, isAdmin, produce);
          },
          onTap: onTap ??
              () {
                FocusScope.of(context).unfocus();
                Navigator.of(context).pushNamed('/produce', arguments: ProduceArguments(produce));
              },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 14),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            decoration: BoxDecoration(
              border: Border(
                top: _resolveTop(context, index),
                bottom: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24)),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            produce.produceName,
                            // maxLines: 3,
                            overflow: TextOverflow.fade,
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17),
                          ),
                          const UICustomVertical(2),
                          Text(
                            "RM $currentProducePrice/kg",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 2, bottom: 4),
                        child: Text(
                          produce.currentProducePrice["priceDate"]
                              .toString()
                              .replaceAll(RegExp("-"), "/"),
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                                fontSize: 13,
                              ),
                        ),
                      ),
                      const UICustomVertical(9),
                      ChangeBox(produce),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IgnorePointer(
                        child: SmallPriceChart(
                          produce,
                          index,
                          chartAnimationDuration: chartAnimationDuration,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  BorderSide _resolveTop(BuildContext context, int index) {
    if (index == 0) {
      return BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24));
    } else {
      return BorderSide.none;
    }
  }

  void showProduceBottomActionSheet(
    BuildContext context,
    bool? isAdmin,
    Produce produce,
  ) {
    final farmhubUser = context.read<GlobalAuthCubit>().state.farmhubUser!;
    final isProduceFavorite = determineIfInList(
      produce.produceId,
      produceFavoritesToProduceId(farmhubUser.produceFavoritesList),
    );
    isAdmin ??= false;

    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return BlocProvider(
          create: (context) => ProduceListCardCubit(
            farmhubUser: farmhubUser,
            produce: produce,
            repository: locator(),
            globalUICubit: locator(),
          ),
          child: Builder(builder: (context) {
            return ProduceModalBottomSheet(
              isProduceFavorite: isProduceFavorite,
              isAdmin: isAdmin!,
              produce: produce,
            );
          }),
        );
      },
    );
  }
}

class ProduceModalBottomSheet extends StatefulWidget {
  final bool isAdmin;
  final Produce produce;
  final bool isProduceFavorite;

  const ProduceModalBottomSheet({
    Key? key,
    required this.isProduceFavorite,
    required this.isAdmin,
    required this.produce,
  }) : super(key: key);

  @override
  State<ProduceModalBottomSheet> createState() => _ProduceModalBottomSheetState();
}

class _ProduceModalBottomSheetState extends State<ProduceModalBottomSheet> {
  @override
  void initState() {
    super.initState();

    context.read<ProduceListCardCubit>().setIfFavorite(widget.isProduceFavorite);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProduceListCardCubit, ProduceListCardState>(
      builder: (context, state) {
        return widget.isAdmin
            ? BuildAdminModalBottomSheet(
                produce: widget.produce, isFavorite: widget.isProduceFavorite)
            : BuildUserModalBottomSheet(
                produce: widget.produce, isFavorite: widget.isProduceFavorite);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class BuildUserModalBottomSheet extends StatefulWidget {
  final Produce produce;
  final bool isFavorite;

  const BuildUserModalBottomSheet({
    Key? key,
    required this.produce,
    required this.isFavorite,
  }) : super(key: key);

  @override
  State<BuildUserModalBottomSheet> createState() => _BuildUserModalBottomSheetState();
}

class _BuildUserModalBottomSheetState extends State<BuildUserModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).extension<ExtendedColors>()!.onBackgroundPale,
        borderRadius:
            const BorderRadius.only(topLeft: Radius.circular(14), topRight: Radius.circular(14)),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 24),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.produce.produceName),
                const UIVerticalSpace14(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UIHorizontalSpace14(),
                    ChangeBox(widget.produce),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 24, bottom: 34),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14)),
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 46),
                child: ProduceFavoritesButton(isFavorite: widget.isFavorite)),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class BuildAdminModalBottomSheet extends StatelessWidget {
  final Produce produce;
  final bool isFavorite;

  const BuildAdminModalBottomSheet({
    Key? key,
    required this.produce,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProduceDialogCubit(locator(), locator(), locator()),
      child: Builder(builder: (context) {
        return Container(
          height: 390,
          decoration: BoxDecoration(
            color: Theme.of(context).extension<ExtendedColors>()!.onBackgroundPale,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 24),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(produce.produceName),
                    const UIVerticalSpace14(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "RM ${roundNum(produce.currentProducePrice["price"], 2)}/kg",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        const UIHorizontalSpace14(),
                        ChangeBox(produce),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 14, left: 46, right: 46),
                  child: ProduceFavoritesButton(isFavorite: isFavorite)),
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 46, right: 46),
                child: SecondaryButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      "/add_new_price_second",
                      arguments: AddNewPriceScreenArguments(
                        produce,
                        AddNewPriceFromRoute.fromMainBottomSheet,
                      ),
                    );
                  },
                  content: "Add new Price",
                  type: SecondaryButtonType.filled,
                  buttonIcon: const Icon(Icons.attach_money, size: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 46, right: 46),
                child: SecondaryButton(
                  type: SecondaryButtonType.filled,
                  onPressed: () {
                    context.read<ProduceDialogCubit>().showEditProduce(
                          context: context,
                          editProduceDialog: returnEditProduceDialog(
                            context: context,
                            produce: produce,
                            textEditingController: TextEditingController(),
                            formKey: GlobalKey<FormState>(),
                            formFocusNode: FocusNode(),
                            fromRoute: DialogFromRoute.fromMainBottomSheet,
                          ),
                        );
                  },
                  content: "Edit Produce",
                  buttonIcon: const Icon(Icons.edit, size: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 46, right: 46),
                child: SecondaryButton(
                  type: SecondaryButtonType.red,
                  onPressed: () async {
                    // This shows the confirmation message. This will also handle deletion and
                    // showing the progress dialog and the like if the user decides to continue.
                    context.read<ProduceDialogCubit>().showDeleteConfirmation(
                          context: context,
                          produce: produce,
                          confirmationDialog: returnProduceDeleteConfirmationDialog(
                            context,
                            produce,
                            DialogFromRoute.fromMainBottomSheet,
                          ),
                        );
                  },
                  content: "Delete Produce",
                  buttonIcon: const Icon(Icons.delete, size: 20),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}

class ProduceFavoritesButton extends StatelessWidget {
  final bool isFavorite;

  const ProduceFavoritesButton({Key? key, required this.isFavorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentState = context.read<ProduceListCardCubit>().state;

    if (currentState is PLCInitial) {
      throw Exception("This state should not have been emitted");
    } else if (currentState is PLCAddToFavoritesButton) {
      return SecondaryButton(
        onPressed: () {
          context.read<ProduceListCardCubit>().addToFavorites(context);
        },
        content: "Add to Favorites",
        buttonIcon: const Icon(Icons.bookmark_add_outlined, size: 20),
      );
    } else if (currentState is PLCRemoveFromFavoritesButton) {
      return SecondaryButton(
        onPressed: () {
          context.read<ProduceListCardCubit>().removeFromFavorites(context);
        },
        type: SecondaryButtonType.red,
        content: "Remove from Favorites",
        buttonIcon: const Icon(Icons.bookmark_remove_outlined, size: 20),
      );
    } else if (currentState is PLCLoading) {
      return const SecondaryButton(
        content: "Loading...",
        type: SecondaryButtonType.filled,
      );
    } else {
      throw Exception("Unexpected state was thrown");
    }
  }
}

class ChangeBox extends StatelessWidget {
  final Produce produce;
  final Alignment? alignment;

  const ChangeBox(this.produce, {Key? key, this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num? priceChange = resolvePriceChange(context);
    bool? isNegative;

    if (priceChange != null) {
      isNegative = priceChange < 0;
    }

    if (isNegative != null) {
      return Align(
        alignment: alignment ?? Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 14),
          decoration: BoxDecoration(
            color: _resolveBackgroundColor(context, isNegative),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            _resolveString(priceChange!, isNegative),
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 14,
                  color: _resolveTextColor(context, isNegative),
                ),
          ),
        ),
      );
    } else {
      return Align(
        alignment: alignment ?? Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 14),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            "RM-.--",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
      );
    }
  }

  // Container _buildChangeBox(BuildContext context, bool? isNegative, num? priceChange) {
  //   if (isNegative != null) {
  //     return Container(
  //       alignment: Alignment.center,
  //       padding: const EdgeInsets.only(bottom: 2),
  //       decoration: BoxDecoration(
  //         color: _resolveBackgroundColor(context, isNegative),
  //         borderRadius: BorderRadius.circular(6),
  //       ),
  //       child: Text(
  //         _resolveString(priceChange!, isNegative),
  //         style: Theme.of(context).textTheme.bodyText2!.copyWith(
  //               fontSize: 14,
  //               color: _resolveTextColor(context, isNegative),
  //             ),
  //       ),
  //     );
  //   } else {
  //     return Container(
  //       alignment: Alignment.center,
  //       padding: const EdgeInsets.only(bottom: 2),
  //       decoration: BoxDecoration(
  //         color: Colors.grey.withOpacity(0.2),
  //         borderRadius: BorderRadius.circular(6),
  //       ),
  //       child: Text(
  //         "RM-.--",
  //         style: Theme.of(context).textTheme.bodyText2!.copyWith(
  //               fontSize: 14,
  //               color: Theme.of(context).colorScheme.primary,
  //             ),
  //       ),
  //     );
  //   }
  // }

  String _resolveString(num priceChange, bool isNegative) {
    if (isNegative) {
      return "-RM${priceChange.abs()}";
    } else {
      return "+RM$priceChange";
    }
  }

  num? resolvePriceChange(BuildContext context) {
    // Check if previous price is null
    if (produce.previousProducePrice["price"] == null) {
      return null;
    } else {
      final num currentPrice = produce.currentProducePrice["price"];
      final num previousPrice = produce.previousProducePrice["price"];
      final num change = currentPrice - previousPrice;

      return roundNum(change.toDouble(), 2);
    }
  }

  Color _resolveBackgroundColor(BuildContext context, bool isNegative) {
    if (isNegative) {
      return Theme.of(context).colorScheme.error;
    } else {
      return Theme.of(context).colorScheme.secondaryVariant;
    }
  }

  Color _resolveTextColor(BuildContext context, bool isNegative) {
    if (isNegative) {
      return Theme.of(context).colorScheme.background;
    } else {
      return Theme.of(context).colorScheme.primary;
    }
  }
}

class SmallPriceChart extends StatelessWidget {
  final double? chartAnimationDuration;

  const SmallPriceChart(
    this.produce,
    this.index, {
    Key? key,
    this.chartAnimationDuration,
  }) : super(key: key);

  final Produce produce;
  final int index;

  @override
  Widget build(BuildContext context) {
    // Check if there is less than two weeklyPrices
    if (produce.weeklyPrices.length < 2) {
      return Container(
        alignment: Alignment.center,
        height: 90,
        width: 120,
        child: Text(
          'Not enough data for chart',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.caption,
        ),
      );
    } else {
      final bool isNegative = resolveIsNegative(produce);
      late LinearGradient gradient;
      late Color borderColor;

      if (isNegative) {
        gradient = LinearGradient(
          colors: [
            Color(0xffEC6666),
            Color(0xffFFF4F4).withOpacity(0.1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        );
        borderColor = const Color(0xffEC6666);
      } else {
        gradient = LinearGradient(
          colors: [
            Color(0xff79D2DE),
            Color(0xffFFF4F4).withOpacity(0.1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        );
        borderColor = const Color(0xff79D2DE);
      }

      // Begin process of translating weeklyPricesMap
      final Map<String, dynamic> weeklyPricesMap = produce.weeklyPrices;
      final List<PriceSnippet> pricesList = [];

      weeklyPricesMap.forEach((priceDate, price) {
        pricesList.add(PriceSnippet(price: price, priceDate: priceDate));
      });

      // This sorts the price in ascending order. [0] being the most old and the last index being
      // the most newest date.
      pricesList.sort((a, b) {
        DateTime aPriceDate = DateFormat("dd-MM-yyyy").parse(a.priceDate);
        DateTime bPriceDate = DateFormat("dd-MM-yyyy").parse(b.priceDate);

        return aPriceDate.compareTo(bPriceDate);
      });

      return SizedBox(
        height: 90,
        width: 120,
        child: SfCartesianChart(
          plotAreaBorderColor: Colors.transparent,
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          series: <CartesianSeries<PriceSnippet, int>>[
            SplineAreaSeries<PriceSnippet, int>(
              animationDuration: chartAnimationDuration,
              dataSource: pricesList,
              xValueMapper: (priceSnippet, index) => index,
              yValueMapper: (priceSnippet, index) => priceSnippet.price,
              borderWidth: 3,
              borderColor: borderColor,
              gradient: gradient,
            ),
          ],
        ),
      );
    }
  }

  bool resolveIsNegative(Produce produce) {
    final num currentPrice = produce.currentProducePrice["price"];
    final num previousPrice = produce.previousProducePrice["price"];
    final num change = currentPrice - previousPrice;

    if (change < 0) {
      return true;
    } else {
      return false;
    }
  }
}
