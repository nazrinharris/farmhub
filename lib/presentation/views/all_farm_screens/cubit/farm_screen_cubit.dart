import 'package:farmhub/features/farm_shop_manager/domain/entities/address/address.dart';
import 'package:farmhub/features/farm_shop_manager/domain/i_farm_shop_manager_repository.dart';
import 'package:farmhub/presentation/smart_widgets/multiple_fields_form/multiple_fields_form_bloc.dart';
import 'package:farmhub/presentation/smart_widgets/primary_button_aware/primary_button_aware_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/app_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../../../features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import '../../../global/cubit/global_ui_cubit.dart';

part 'farm_screen_state.dart';
part 'farm_screen_cubit.freezed.dart';

class FarmScreenCubit extends Cubit<FarmScreenState> {
  final FirstTwoFieldsFormBloc firstTwoFieldsFormBloc;
  final SecondTwoFieldsFormBloc secondTwoFieldsFormBloc;
  final PrimaryButtonAwareCubit buttonAwareCubit;
  final IFarmShopManagerRepository farmShopManagerRepository;

  FarmScreenCubit({
    required this.firstTwoFieldsFormBloc,
    required this.secondTwoFieldsFormBloc,
    required this.buttonAwareCubit,
    required this.farmShopManagerRepository,
  }) : super(const FarmScreenState.initial());

  Future<void> createFarm(BuildContext context) async {
    firstTwoFieldsFormBloc.add(enableAlwaysValidation);
    secondTwoFieldsFormBloc.add(enableAlwaysValidation);

    final isValid = firstTwoFieldsFormBloc.state.props.formKey.currentState!.validate() &&
        secondTwoFieldsFormBloc.state.props.formKey.currentState!.validate();

    if (isValid) {
      // Assign respective fields
      final String farmName = firstTwoFieldsFormBloc.state.props.firstFieldValue!;
      final String addressLine = secondTwoFieldsFormBloc.state.props.firstFieldValue!;
      final String city = secondTwoFieldsFormBloc.state.props.secondFieldValue!;
      final String state = secondTwoFieldsFormBloc.state.props.thirdFieldValue!;
      final int postcode = int.parse(secondTwoFieldsFormBloc.state.props.fourthFieldValue!);
      final String rawAddress = "$addressLine, $city, $state, $postcode";
      final Address farmAddress = Address(
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
          await farmShopManagerRepository.createFarm(farmName: farmName, farmAddress: farmAddress);

      result.fold(
        (f) {
          emit(FarmScreenState.createFarmError(f));
        },
        (farm) {
          emit(FarmScreenState.createFarmSuccess(farm));
        },
      );
    }
  }

  Future<void> updateFarm(BuildContext context, Farm farm) async {
    firstTwoFieldsFormBloc.add(enableAlwaysValidation);
    secondTwoFieldsFormBloc.add(enableAlwaysValidation);

    final isValid = firstTwoFieldsFormBloc.state.props.formKey.currentState!.validate() &&
        secondTwoFieldsFormBloc.state.props.formKey.currentState!.validate();

    if (isValid) {
      // Assign respective fields
      final String farmName = firstTwoFieldsFormBloc.state.props.firstFieldValue!;
      final String addressLine = secondTwoFieldsFormBloc.state.props.firstFieldValue!;
      final String city = secondTwoFieldsFormBloc.state.props.secondFieldValue!;
      final String state = secondTwoFieldsFormBloc.state.props.thirdFieldValue!;
      final int postcode = int.parse(secondTwoFieldsFormBloc.state.props.fourthFieldValue!);
      final String rawAddress = "$addressLine, $city, $state, $postcode";
      final Address farmAddress = Address(
        rawAddress: rawAddress,
        addressLine: addressLine,
        city: city,
        state: state,
        postcode: postcode,
      );
      final Farm updatedFarm = Farm(
        creatorUserId: farm.creatorUserId,
        farmId: farm.farmId,
        farmName: farmName,
        address: farmAddress,
      );

      // Indicate Loading
      buttonAwareCubit.triggerLoading();

      // Do the thang
      final result = await farmShopManagerRepository.updateFarm(farm: updatedFarm);

      result.fold(
        (f) {
          debugPrint(f.toString());
          context.read<PrimaryButtonAwareCubit>().triggerFirstPage();
          showErrorDialog(context: context, failure: f);
        },
        (farm) {
          context.read<PrimaryButtonAwareCubit>().triggerFirstPage();
          context.read<GlobalUICubit>().setShouldRefreshProfile(true);
          Navigator.of(context).pop();
        },
      );
    }
  }
}
