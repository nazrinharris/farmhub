import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/auth_bloc/auth_bloc.dart';
import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/data/repository/auth_repository.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final GetIt locator = GetIt.instance;

Future<void>? setupLocator() {
  //! Core
  //* Auth
  // Blocs & Cubits
  locator.registerFactory(() => AuthBloc(
        authRepository: locator(),
      ));
  // Repository
  locator.registerLazySingleton<IAuthRepository>(() => AuthRepository(
        networkInfo: locator(),
        authRemoteDataSource: locator(),
        authLocalDataSource: locator(),
      ));
  // Datasources
  locator
      .registerLazySingleton<IAuthLocalDataSource>(() => AuthLocalDataSource());
  locator
      .registerLazySingleton<IAuthRemoteDataSource>(() => AuthRemoteDataSource(
            firebaseAuth: locator(),
            firebaseFirestore: locator(),
          ));

  //* Network Info
  locator.registerLazySingleton<INetworkInfo>(
      () => NetworkInfo(internet: locator()));

  //! External/Third Party
  //* Firebase
  locator.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  locator.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);

  //* Internet Connection Checker
  locator.registerSingleton(InternetConnectionChecker());

  //* Hive
  locator.registerSingleton<HiveInterface>(Hive);
}
