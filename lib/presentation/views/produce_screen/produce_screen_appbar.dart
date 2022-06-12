// ignore_for_file: prefer_const_constructors

import 'package:farmhub/app_router.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/presentation/views/produce_screen/produce_aggregate_cubit/produce_aggregate_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared_widgets/appbars.dart';
import '../../smart_widgets/produce_dialogs/app_dialogs.dart';
import '../../smart_widgets/produce_dialogs/produce_dialog_cubit/produce_dialog_cubit.dart';

class ProduceScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isAdmin;

  const ProduceScreenAppBar({
    Key? key,
    required this.isAdmin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProduceDialogCubit(locator(), locator()),
      child: Builder(builder: (context) {
        return BlocBuilder<ProduceAggregateCubit, ProduceAggregateState>(
          builder: (context, state) {
            final Produce produce = state.props.produce!;
            print("App Bar Rebuilt -> isProduceFavorite - ${state.props.isProduceFavorite}");

            return DefaultAppBar(
              leadingIcon: const Icon(Icons.arrow_back),
              leadingOnPressed: () {
                Navigator.of(context).pop();
              },
              trailingIcon: resolveTrailingIcon(context, state),
              trailingOnPressed: () async {
                if (state.props.isProduceFavorite) {
                  // removeFromFavorites()
                  await context.read<ProduceAggregateCubit>().removeFromFavorites(context);
                } else {
                  // addToFavorites()
                  await context.read<ProduceAggregateCubit>().addToFavorites(context);
                }
              },
              secondTrailingChild: resolveSecondTrailing(context, isAdmin, produce),
            );
          },
        );
      }),
    );
  }

  Icon resolveTrailingIcon(BuildContext context, ProduceAggregateState state) {
    if (state.props.isProduceFavorite) {
      return Icon(
        Icons.bookmark_remove_outlined,
        color: Theme.of(context).colorScheme.error,
      );
    } else {
      return const Icon(Icons.bookmark_add_outlined);
    }
  }

  Widget? resolveSecondTrailing(BuildContext context, bool isAdmin, Produce produce) {
    if (isAdmin) {
      return PopupMenuButton(
        icon: const Icon(Icons.more_vert),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        itemBuilder: (context) {
          return <PopupMenuItem>[
            PopupMenuItem(
              value: 0,
              child: Row(
                children: [
                  Icon(Icons.edit, size: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text("Edit Produce", style: Theme.of(context).textTheme.bodyText1),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: Row(
                children: [
                  Icon(
                    Icons.attach_money,
                    size: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      "Add Price",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Row(
                children: [
                  Icon(
                    Icons.delete,
                    size: 20,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      "Delete Produce",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        onSelected: (value) {
          switch (value) {
            case 0:
              context.read<ProduceDialogCubit>().showEditProduce(
                    context: context,
                    editProduceDialog: returnEditProduceDialog(
                      context: context,
                      produce: produce,
                      textEditingController: TextEditingController(),
                      formKey: GlobalKey<FormState>(),
                      formFocusNode: FocusNode(),
                      fromRoute: DialogFromRoute.fromProduce,
                    ),
                  );
              break;
            case 1:
              Navigator.of(context).pushNamed("/add_new_price_second",
                  arguments: AddNewPriceScreenArguments(
                    produce,
                    AddNewPriceFromRoute.fromProduceScreen,
                  ));
              break;
            case 2:
              context.read<ProduceDialogCubit>().showDeleteConfirmation(
                    context: context,
                    produce: produce,
                    confirmationDialog: returnProduceDeleteConfirmationDialog(
                      context,
                      produce,
                      DialogFromRoute.fromProduce,
                    ),
                  );
              break;
            default:
              throw UnimplementedError();
          }
        },
      );
    } else {
      return null;
    }
  }

  Function()? resolveSecondTrailingOnPressed(bool isAdmin) {
    if (isAdmin) return () {};
    return null;
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
