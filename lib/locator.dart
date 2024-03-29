import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/app_version/app_version_local_datasource.dart';
import 'package:farmhub/core/app_version/app_version_repository.dart';
import 'package:farmhub/core/auth/auth_bloc/auth_bloc.dart';
import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/data/repository/auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:farmhub/features/farm_shop_manager/data/datasources/farm_shop_manager_local_datasource.dart';
import 'package:farmhub/features/farm_shop_manager/data/datasources/farm_shop_manager_remote_datasource.dart';
import 'package:farmhub/features/farm_shop_manager/data/repository/farm_shop_manager_repository.dart';
import 'package:farmhub/features/farm_shop_manager/domain/i_farm_shop_manager_repository.dart';
import 'package:farmhub/features/produce_manager/bloc/produce_manager_bloc.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_local_datasource.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_remote_datasource.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_prices_remote_datasource.dart';
import 'package:farmhub/features/produce_manager/data/repository/produce_manager_repository.dart';
import 'package:farmhub/presentation/global/cubit/global_ui_cubit.dart';
import 'package:farmhub/presentation/smart_widgets/produce_dialogs/produce_dialog_cubit/produce_dialog_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
// ignore: depend_on_referenced_packages
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'core/app_version/app_version_remote_datasource.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  //! Core
  //* Auth
  // Blocs & Cubits
  locator.registerFactory(() => AuthBloc(
        authRepository: locator(),
        globalAuthCubit: locator(),
        firebaseAuth: locator(),
      ));
  locator.registerLazySingleton(() => GlobalAuthCubit(locator()));
  // Repository
  locator.registerLazySingleton<IAuthRepository>(() => AuthRepository(
        networkInfo: locator(),
        appVersionRepository: locator(),
        authRemoteDataSource: locator(),
        authLocalDataSource: locator(),
        farmShopManagerRemoteDatasource: locator(),
      ));
  // Datasources
  locator.registerLazySingleton<IAuthLocalDataSource>(() => AuthLocalDataSource());
  locator.registerLazySingleton<IAuthRemoteDataSource>(() => AuthRemoteDataSource(
        firebaseAuth: locator(),
        firebaseFirestore: locator(),
      ));

  //* Network Info
  locator.registerLazySingleton<INetworkInfo>(() => NetworkInfo(internet: locator()));

  //* App Version
  // Repository
  locator.registerLazySingleton<IAppVersionRepository>(
    () => AppVersionRepository(
      networkInfo: locator(),
      appVersionRemoteDatasource: locator(),
      appVersionLocalDatasource: locator(),
    ),
  );
  // Datasources
  locator.registerLazySingleton<IAppVersionRemoteDatasource>(() => AppVersionRemoteDatasource());
  locator.registerLazySingleton<IAppVersionLocalDatasource>(() => AppVersionLocalDatasource());

  //! Features
  //* Produce Manager
  // Blocs
  locator.registerFactory(() => ProduceManagerBloc(repository: locator()));
  // Repository
  locator.registerLazySingleton<IProduceManagerRepository>(() => ProduceManagerRepository(
        networkInfo: locator(),
        appVersionRepository: locator(),
        remoteDatasource: locator(),
        localDatasource: locator(),
        authRepository: locator(),
        globalAuthCubit: locator(),
        pricesRemoteDatasource: locator(),
      ));
  // Datasources
  locator.registerLazySingleton<IProduceManagerRemoteDatasource>(
      () => ProduceManagerRemoteDatasource(firebaseFirestore: locator()));
  locator
      .registerLazySingleton<IProduceManagerLocalDatasource>(() => ProduceManagerLocalDatasource());
  locator.registerLazySingleton<IProducePricesRemoteDatasource>(() => ProducePricesRemoteDatasource(
        firebaseFirestore: locator(),
      ));

  //* FarmShopManager
  // Repository
  locator.registerLazySingleton<IFarmShopManagerRepository>(() => FarmShopManagerRepository(
        networkInfo: locator(),
        appVersionRepository: locator(),
        remoteDatasource: locator(),
        localDatasource: locator(),
        authRepository: locator(),
        globalAuthCubit: locator(),
      ));
  // Datasources
  locator.registerLazySingleton<IFarmShopManagerRemoteDatasource>(
      () => FarmShopManagerRemoteDatasource(
            firebaseFirestore: locator(),
          ));
  locator.registerLazySingleton<IFarmShopManagerLocalDatasource>(
      () => FarmShopManagerLocalDatasource());

  //! UI Relared
  //* Global
  locator.registerLazySingleton<GlobalUICubit>(() => GlobalUICubit());

  //* ProduceListCard
  locator.registerFactory<ProduceDialogCubit>(
      () => ProduceDialogCubit(locator(), locator(), locator()));

  //! External/Third Party
  //* Firebase
  locator.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  locator.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);

  //* Internet Connection Checker
  locator.registerSingleton(InternetConnection());

  //* Hive
  locator.registerSingleton<HiveInterface>(Hive);
}
