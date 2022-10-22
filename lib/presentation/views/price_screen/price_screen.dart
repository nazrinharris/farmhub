import 'package:farmhub/app_router.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/presentation/shared_widgets/appbars.dart';
import 'package:farmhub/presentation/shared_widgets/ui_helpers.dart';
import 'package:farmhub/presentation/smart_widgets/custom_cupertino_sliver_refresh_control.dart';
import 'package:farmhub/presentation/smart_widgets/produce_list_card/produce_list_card.dart';
import 'package:farmhub/presentation/views/price_screen/cubit/price_screen_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../features/produce_manager/domain/entities/price/price.dart';
import '../../../features/produce_manager/domain/entities/produce/produce.dart';
import '../../../locator.dart';
import '../../global/cubit/global_ui_cubit.dart';
import '../../shared_widgets/buttons.dart';
import '../../smart_widgets/produce_dialogs/app_dialogs.dart';
import '../../smart_widgets/produce_dialogs/produce_dialog_cubit/produce_dialog_cubit.dart';

class PriceScreen extends StatelessWidget {
  final PriceScreenArguments arguments;

  const PriceScreen(this.arguments, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String produceName = arguments.produce.produceName;
    final num currentPrice = arguments.price.currentPrice;
    final String priceDate = arguments.price.priceDate.replaceAll(RegExp("-"), "/");

    return BlocProvider(
      create: (context) => PriceScreenCubit(
        price: arguments.price,
        produce: arguments.produce,
        repository: locator(),
      ),
      child: Builder(builder: (context) {
        return BlocListener<GlobalUICubit, GlobalUIState>(
          listener: (context, state) async {
            if (state.props.shouldRefreshPrice == true) {
              await context.read<PriceScreenCubit>().refresh();
              context.read<GlobalUICubit>().setShouldRefreshPrice(false);
            }
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            extendBody: true,
            appBar: DefaultAppBar(
              leadingIcon: const Icon(Icons.arrow_back),
              leadingOnPressed: () {
                Navigator.of(context).pop();
              },
            ),
            body: BlocBuilder<PriceScreenCubit, PriceScreenState>(
              builder: (context, state) {
                return CustomScrollView(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  slivers: [
                    CustomCupertinoSliverRefreshControl(
                      onRefresh: () async {
                        await context.read<PriceScreenCubit>().refresh();
                      },
                    ),
                    SliverPriceScreenHeader(arguments.produce, state.props.price),
                    SliverAllPricesList(arguments.produce, state.props.price),
                  ],
                );
              },
            ),
          ),
        );
      }),
    );
  }
}

Widget resolveIsAverage(BuildContext context, Price price) {
  if (price.isAverage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "RM ${price.currentPrice}/kg",
          style: Theme.of(context).textTheme.headline2,
        ),
        const UIHorizontalSpace6(),
        Text(
          "(avg.)",
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  } else {
    return Text(
      "RM ${price.currentPrice}/kg",
      style: Theme.of(context).textTheme.headline2,
    );
  }
}

class SliverPriceScreenHeader extends StatelessWidget {
  final Produce produce;
  final Price price;

  const SliverPriceScreenHeader(this.produce, this.price, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      const UITopPadding(),
      Text(
        produce.produceName,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline1,
      ),
      const UIVerticalSpace24(),
      Column(
        children: [
          Text(
            "Price",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const UIVerticalSpace6(),
          resolveIsAverage(context, price)
        ],
      ),
      const UIVerticalSpace24(),
      Column(
        children: [
          Text(
            "Date",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const UIVerticalSpace6(),
          Text(
            price.priceDate,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: const Color(0xff799A61), fontSize: 23),
          ),
        ],
      ),
      const UIVerticalSpace24(),
      const UIBorder(margin: EdgeInsets.symmetric(horizontal: 24), opacity: 0.1),
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 34),
        child: Text("All Prices", style: Theme.of(context).textTheme.bodyText1),
      ),
    ]));
  }
}

class SliverAllPricesList extends StatelessWidget {
  final Produce produce;
  final Price price;

  const SliverAllPricesList(this.produce, this.price, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        if (index == price.allPricesWithDateList.length) {
          return const UICustomVertical(100);
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: AllPriceListCard(index, price, produce),
        );
      }, childCount: price.allPricesWithDateList.length + 1),
    );
  }
}

class AllPriceListCard extends StatefulWidget {
  final Produce produce;
  final Price price;
  final int index;

  const AllPriceListCard(this.index, this.price, this.produce, {Key? key}) : super(key: key);

  @override
  State<AllPriceListCard> createState() => _AllPriceListCardState();
}

class _AllPriceListCardState extends State<AllPriceListCard> {
  @override
  void initState() {
    super.initState();

    widget.price.allPricesWithDateList.sort((a, b) {
      DateTime aPriceDate = DateFormat("yyyy-MM-dd hh:mm:ss aaa").parse(a.priceDate);
      DateTime bPriceDate = DateFormat("yyyy-MM-dd hh:mm:ss aaa").parse(b.priceDate);

      return bPriceDate.compareTo(aPriceDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    final subPriceDate = widget.price.allPricesWithDateList[widget.index].priceDate;
    final dateTimeStamp = DateFormat("yyyy-MM-dd hh:mm:ss aaa").parse(
      widget.price.allPricesWithDateList[widget.index].priceDate,
    );
    final date = DateFormat("dd/MM/yyyy").format(dateTimeStamp);
    final time = DateFormat("hh:mm aaa").format(dateTimeStamp);
    final currentPrice = widget.price.allPricesWithDateList[widget.index].price;
    final bool? isAdmin = context.read<GlobalAuthCubit>().state.isAdmin;

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onLongPress: () {
          HapticFeedback.heavyImpact();
          showSubPriceBottomActionSheet(context, isAdmin, date, time, subPriceDate, currentPrice);
          debugPrint(subPriceDate);
        },
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 28),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
          decoration: BoxDecoration(
            border: Border(
              top: _resolveTop(context, widget.index),
              bottom: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.24)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        "RM ${widget.price.allPricesWithDateList[widget.index].price.toString()}/kg"),
                  ],
                ),
              )
            ],
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

  void showSubPriceBottomActionSheet(
    BuildContext context,
    bool? isAdmin,
    String date,
    String time,
    String subPriceDate,
    num currentPrice,
  ) {
    isAdmin ??= false;

    if (isAdmin) {
      showModalBottomSheet<void>(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return BlocProvider(
            create: (context) => ProduceDialogCubit(locator(), locator(), locator()),
            child: Builder(builder: (context) {
              return Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(14), topRight: Radius.circular(14)),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 34, bottom: 10),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("$date - $time",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 22)),
                          const UIVerticalSpace14(),
                          Text(
                            "RM ${currentPrice.toString()}/kg",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14, left: 46, right: 46),
                      child: SecondaryButton(
                        type: SecondaryButtonType.filled,
                        onPressed: () {
                          context.read<ProduceDialogCubit>().showEditSubPrice(
                                context: context,
                                editSubPriceDialog: returnEditSubPriceDialog(
                                  context: context,
                                  produce: widget.produce,
                                  price: widget.price,
                                  textEditingController: TextEditingController(),
                                  formKey: GlobalKey<FormState>(),
                                  formFocusNode: FocusNode(),
                                  fromRoute: DialogFromRoute.fromPrice,
                                  subPriceDate: subPriceDate,
                                ),
                              );
                        },
                        content: "Edit Price",
                        buttonIcon: Icon(Icons.edit, size: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14, left: 46, right: 46),
                      child: SecondaryButton(
                        type: SecondaryButtonType.red,
                        onPressed: () {
                          context.read<ProduceDialogCubit>().showSubPriceDeleteConfirmationDialog(
                                context: context,
                                subPriceDeleteConfirmationDialog:
                                    returnSubPriceDeleteConfirmationDialog(
                                  context,
                                  DialogFromRoute.fromPrice,
                                  widget.produce,
                                  widget.price,
                                  subPriceDate,
                                ),
                              );
                        },
                        content: "Delete Price",
                        buttonIcon: Icon(Icons.delete, size: 20),
                      ),
                    ),
                  ],
                ),
              );
            }),
          );
        },
      );
    } else {}
  }
}
