import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/constants/app_const.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_local_datasource.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_remote_datasource.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:fpdart/fpdart.dart';

const String ProduceManagerRepositoryCode = "PMR-";

class ProduceManagerRepository implements IProduceManagerRepository {
  final INetworkInfo networkInfo;
  final IProduceManagerRemoteDatasource remoteDatasource;
  final IProduceManagerLocalDatasource localDatasource;
  final IAuthRepository authRepository;

  ProduceManagerRepository({
    required this.networkInfo,
    required this.remoteDatasource,
    required this.localDatasource,
    required this.authRepository,
  });

  @override
  FutureEither<List<Produce>> getFirstTenProduce() async {
    final isConnected = await networkInfo.isConnected;

    if (isConnected) {
      try {
        final firstTenProduce = await remoteDatasource.getFirstTenProduce();
        return Right(firstTenProduce);
      } catch (e) {
        return Left(
          UnexpectedFailure(
            code: (ProduceManagerRepositoryCode + 'getFirstTenProduce()'),
            message: e.toString(),
            stackTrace: StackTrace.current,
          ),
        );
      }
    } else {
      return Left(
        InternetConnectionFailure(
          code: ProduceManagerRepositoryCode + ERROR_NO_INTERNET_CONNECTION,
          message: MESSAGE_NO_INTERNET_CONNECTION,
          stackTrace: StackTrace.current,
        ),
      );
    }
  }

  @override
  FutureEither<List<Produce>> getNextTenProduce(List<Produce> lastProduceList) async {
    if (await networkInfo.isConnected) {
      try {
        final newProduceList = await remoteDatasource.getNextTenProduce(lastProduceList);

        return Right(newProduceList);
      } catch (e) {
        return Left(ProduceManagerFailure(code: e.toString(), stackTrace: StackTrace.current));
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
  FutureEither<Produce> getSpecificProduce({required String pid}) {
    // TODO: implement getSpecificProduce
    throw UnimplementedError();
  }

  @override
  FutureEither<Produce> createNewProduce({
    required String produceName,
    required num currentProducePrice,
  }) async {
    // Check if user is connected to the internet.
    if (await networkInfo.isConnected) {
      try {
        // Check if user is signed in.
        final failureOrUserData =
            await authRepository.retrieveUserData().then((result) => result.fold(
                  (f) => f,
                  (farmhubUser) => farmhubUser,
                ));

        if (failureOrUserData is FarmhubUser) {
          // Check if user is admin.
          final failureOrIsAdmin =
              await authRepository.isAdmin(uid: failureOrUserData.uid).then((result) => result.fold(
                    (f) => f,
                    (isAdmin) => isAdmin,
                  ));
          if (failureOrIsAdmin is bool) {
            // Continue check if user is Admin
            if (failureOrIsAdmin == true) {
              final result = await remoteDatasource.createNewProduce(
                produceName: produceName,
                currentProducePrice: currentProducePrice,
                authorId: failureOrUserData.uid,
              );
              return Right(result);
            } else {
              return Left(
                ProduceManagerFailure(
                  code: 'isAdmin-check',
                  message: 'User is not an admin',
                  stackTrace: StackTrace.current,
                ),
              );
            }
          } else if (failureOrIsAdmin is Failure) {
            // Return Error
            return Left(ProduceManagerFailure(
              code: failureOrIsAdmin.code,
              message: failureOrIsAdmin.message,
              stackTrace: StackTrace.current,
            ));
          } else {
            throw UnexpectedException(
              code: 'createNewProduce',
              message: 'After folding, it returns an unexpected type.',
              stackTrace: StackTrace.current,
            );
          }
        } else if (failureOrUserData is Failure) {
          // Return Error
          return Left(ProduceManagerFailure(
            code: failureOrUserData.code,
            message: failureOrUserData.message,
            stackTrace: StackTrace.current,
          ));
        } else {
          throw UnexpectedException(
            code: 'createNewProduce',
            message: 'After folding, it returns an unexpected type.',
            stackTrace: StackTrace.current,
          );
        }
      } on FirebaseException catch (e) {
        return Left(FirebaseFirestoreFailure(
          message: e.message,
          code: e.code,
          stackTrace: StackTrace.current,
        ));
      } catch (e) {
        return Left(UnexpectedFailure(
          code: e.toString(),
          stackTrace: StackTrace.current,
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
  FutureEither<Produce> addNewPrice({
    required String produceId,
    required num currentPrice,
    num? daysFromNow,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDatasource.addNewPrice(
          produceId: produceId,
          currentPrice: currentPrice,
          daysFromNow: daysFromNow,
        );

        return Right(result);
      } catch (e) {
        return Left(UnexpectedFailure(
          code: e.toString(),
          stackTrace: StackTrace.current,
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
  FutureEither<List<Produce>> searchProduce(String query) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDatasource.searchProduce(query: query);
        return Right(result);
      } catch (e) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: StackTrace.current));
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
  FutureEither<List<Produce>> getNextTenSearchProduce(
    List<Produce> lastProduceList,
    String query,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDatasource.getNextTenSearchProduce(
          lastProduceList: lastProduceList,
          query: query,
        );
        return Right(result);
      } catch (e) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: StackTrace.current));
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
  FutureEither<void>? debugMethod(String produceId) async {
    final result = await remoteDatasource.debugMethod(produceId);

    return Right(result);
  }

  @override
  FutureEither<List<PriceSnippet>> getAggregatePrices(String produceId) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDatasource.getAggregatePrices(produceId);

        return Right(result);
      } catch (e) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: StackTrace.current));
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
  FutureEither<List<Price>> getFirstTenPrices(String produceId) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDatasource.getFirstTenPrices(produceId);

        return Right(result);
      } catch (e) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: StackTrace.current));
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
  FutureEither<List<Price>> getNextTenPrices(List<Price> lastPriceList, String produceId) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDatasource.getNextTenPrices(lastPriceList, produceId);

        return Right(result);
      } catch (e) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: StackTrace.current));
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
