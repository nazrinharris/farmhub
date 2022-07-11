import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:farmhub/features/farm_shop_manager/data/datasources/farm_shop_manager_local_datasource.dart';
import 'package:farmhub/features/farm_shop_manager/data/datasources/farm_shop_manager_remote_datasource.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/farm_shop/farm_shop.dart';
import 'package:farmhub/features/farm_shop_manager/domain/entities/address/address.dart';
import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/features/farm_shop_manager/domain/i_farm_shop_manager_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/util/app_const.dart';

class FarmShopManagerRepository implements IFarmShopManagerRepository {
  final INetworkInfo networkInfo;
  final IFarmShopManagerRemoteDatasource remoteDatasource;
  final IFarmShopManagerLocalDatasource localDatasource;
  final IAuthRepository authRepository;
  final GlobalAuthCubit globalAuthCubit;

  FarmShopManagerRepository({
    required this.networkInfo,
    required this.remoteDatasource,
    required this.localDatasource,
    required this.authRepository,
    required this.globalAuthCubit,
  });

  @override
  FutureEither<Farm> createFarm({required String farmName, required Address farmAddress}) async {
    if (await networkInfo.isConnected) {
      try {
        final user = globalAuthCubit.state.farmhubUser!;

        final result = await remoteDatasource.createFarm(
          farmhubUser: user,
          farmName: farmName,
          farmAddress: farmAddress,
        );

        return Right(result);
      } catch (e, stack) {
        return Left(FarmShopManagerFailure(
          code: e.toString(),
          message: "Uh oh, something went wrong",
          stackTrace: stack,
        ));
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  FutureEither<Shop> createShop({required String shopName, required Address shopAddress}) async {
    if (await networkInfo.isConnected) {
      try {
        final user = globalAuthCubit.state.farmhubUser!;

        final result = await remoteDatasource.createShop(
          farmhubUser: user,
          shopName: shopName,
          shopAddress: shopAddress,
        );

        return Right(result);
      } catch (e, stack) {
        return Left(FarmShopManagerFailure(
          code: e.toString(),
          message: "Uh oh, something went wrong",
          stackTrace: stack,
        ));
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }
}
