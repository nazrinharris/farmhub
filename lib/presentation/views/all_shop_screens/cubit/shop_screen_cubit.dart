import 'package:bloc/bloc.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/farm_shop_manager/domain/entities/address/address.dart';
import '../../../../features/farm_shop_manager/domain/i_farm_shop_manager_repository.dart';
import '../../../smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import '../../../smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';

part 'shop_screen_state.dart';
part 'shop_screen_cubit.freezed.dart';

class ShopScreenCubit extends Cubit<ShopScreenState> {
  final FirstTwoFieldsFormBloc firstTwoFieldsFormBloc;
  final SecondTwoFieldsFormBloc secondTwoFieldsFormBloc;
  final PrimaryButtonAwareCubit buttonAwareCubit;
  final IFarmShopManagerRepository farmShopManagerRepository;

  ShopScreenCubit({
    required this.firstTwoFieldsFormBloc,
    required this.secondTwoFieldsFormBloc,
    required this.buttonAwareCubit,
    required this.farmShopManagerRepository,
  }) : super(ShopScreenState.initial());

  Future<void> createShop(BuildContext context) async {
    firstTwoFieldsFormBloc.add(enableAlwaysValidation);
    secondTwoFieldsFormBloc.add(enableAlwaysValidation);

    final isValid = firstTwoFieldsFormBloc.state.props.formKey.currentState!.validate() &&
        secondTwoFieldsFormBloc.state.props.formKey.currentState!.validate();

    if (isValid) {
      // Assign respective fields
      final String shopName = firstTwoFieldsFormBloc.state.props.firstFieldValue!;
      final String addressLine = secondTwoFieldsFormBloc.state.props.firstFieldValue!;
      final String city = secondTwoFieldsFormBloc.state.props.secondFieldValue!;
      final String state = secondTwoFieldsFormBloc.state.props.thirdFieldValue!;
      final int postcode = int.parse(secondTwoFieldsFormBloc.state.props.fourthFieldValue!);
      final String rawAddress = "$addressLine, $city, $state, $postcode";
      final Address shopAddress = Address(
        rawAddress: rawAddress,
        addressLine: addressLine,
        city: city,
        state: state,
        postcode: postcode,
      );

      // Indicate Loading
      buttonAwareCubit.triggerLoading();

      // Do the thang
      final result =
          await farmShopManagerRepository.createShop(shopName: shopName, shopAddress: shopAddress);

      result.fold(
        (f) {
          emit(ShopScreenState.createShopError(f));
        },
        (shop) {
          emit(ShopScreenState.createShopSuccess(shop));
        },
      );
    }
  }
}
