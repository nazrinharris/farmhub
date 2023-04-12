import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/auth/domain/i_auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_local_datasource.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_remote_datasource.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_prices_remote_datasource.dart';
import 'package:farmhub/features/produce_manager/domain/entities/price/price.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/features/produce_manager/data/repository/produce_manager_helpers.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

const String ProduceManagerRepositoryCode = "PMR-";

class ProduceManagerRepository implements IProduceManagerRepository {
  final INetworkInfo networkInfo;
  final IProduceManagerRemoteDatasource remoteDatasource;
  final IProducePricesRemoteDatasource pricesRemoteDatasource;
  final IProduceManagerLocalDatasource localDatasource;
  final IAuthRepository authRepository;
  final GlobalAuthCubit globalAuthCubit;

  ProduceManagerRepository({
    required this.networkInfo,
    required this.remoteDatasource,
    required this.localDatasource,
    required this.authRepository,
    required this.globalAuthCubit,
    required this.pricesRemoteDatasource,
  });

  @override
  FutureEither<List<Produce>> getFirstTenProduce() async {
    final isConnected = await networkInfo.isConnected;

    if (isConnected) {
      try {
        final firstTenProduce = await remoteDatasource.getFirstTenProduce();
        await localDatasource.storeProduceList(firstTenProduce);

        return Right(firstTenProduce);
      } catch (e, stack) {
        return Left(
          UnexpectedFailure(
            code: ("$ProduceManagerRepositoryCode getFirstTenProduce()"),
            message: e.toString(),
            stackTrace: stack,
          ),
        );
      }
    } else {
      debugPrint("Not connected - getFirstTenProduce()");
      try {
        final produceList = await localDatasource.retrieveProduceList();

        return Right(produceList);
      } catch (e, stack) {
        return Left(UnexpectedFailure(message: e.toString(), stackTrace: stack));
      }
    }
  }

  @override
  FutureEither<List<Produce>> getNextTenProduce(List<Produce> lastProduceList) async {
    if (await networkInfo.isConnected) {
      try {
        final newProduceList = await remoteDatasource.getNextTenProduce(lastProduceList);
        await localDatasource.storeProduceList(newProduceList);

        return Right(newProduceList);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
      }
    } else {
      debugPrint("Not connected - getNextTenProduce()");
      try {
        final produceList = await localDatasource.retrieveProduceList();

        return Right(produceList);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
      }
    }
  }

  @override
  FutureEither<Produce> getProduce({required String pid}) async {
    if (await networkInfo.isConnected) {
      try {
        final produce = await remoteDatasource.getProduce(pid);

        return Right(produce);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
              stackTrace: failureOrIsAdmin.stackTrace,
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
            stackTrace: failureOrUserData.stackTrace,
          ));
        } else {
          throw UnexpectedException(
            code: 'createNewProduce',
            message: 'After folding, it returns an unexpected type.',
            stackTrace: StackTrace.current,
          );
        }
      } on FirebaseException catch (e, stack) {
        return Left(FirebaseFirestoreFailure(
          message: e.message,
          code: e.code,
          stackTrace: stack,
        ));
      } on ProduceManagerException catch (e) {
        return Left(UnexpectedFailure(
          message: e.message,
          code: e.code,
          stackTrace: e.stackTrace,
        ));
      } catch (e, stack) {
        return Left(UnexpectedFailure(
          code: e.toString(),
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
  FutureEither<Produce> addNewPrice({
    required String produceId,
    required num currentPrice,
    num? daysFromNow,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await pricesRemoteDatasource.addNewPrice(
          produceId: produceId,
          currentPrice: currentPrice,
          daysFromNow: daysFromNow,
        );

        return Right(result);
      } catch (e, stack) {
        return Left(UnexpectedFailure(
          code: e.toString(),
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
  FutureEither<List<Produce>> searchProduce(String query) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDatasource.searchProduce(query: query);
        return Right(result);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
  FutureEither<Unit> editProduce(String produceId, String newProduceName) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDatasource.editProduce(produceId, newProduceName);

        return const Right(unit);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
  FutureEither<Unit> deleteProduce(String produceId) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDatasource.deleteProduce(produceId);

        return const Right(unit);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
      } on ProduceManagerException catch (e) {
        return Left(
          ProduceManagerFailure(code: e.code, message: e.message, stackTrace: e.stackTrace),
        );
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
        final result = await pricesRemoteDatasource.getAggregatePrices(produceId);

        return Right(result);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
        final result = await pricesRemoteDatasource.getFirstTenPrices(produceId);

        return Right(result);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
        final result = await pricesRemoteDatasource.getNextTenPrices(lastPriceList, produceId);

        return Right(result);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
  FutureEither<Price> editSubPrice(
    String produceId,
    String priceId,
    num newPrice,
    String subPriceDate,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await pricesRemoteDatasource.editSubPrice(
          produceId,
          priceId,
          newPrice,
          subPriceDate,
        );

        return Right(result);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
  FutureEither<Price> getPrice(String produceId, String priceId) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await pricesRemoteDatasource.getPrice(produceId, priceId);

        return Right(result);
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
  FutureEither<bool> deleteSubPrice(
      {required String produceId, required String priceId, required String subPriceDate}) async {
    if (await networkInfo.isConnected) {
      try {
        final isPriceDocDeleted =
            await pricesRemoteDatasource.deleteSubPrice(produceId, priceId, subPriceDate);
        return Right(isPriceDocDeleted);
      } on ProduceManagerException catch (e) {
        return Left(
            ProduceManagerFailure(code: e.code, message: e.message, stackTrace: e.stackTrace));
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
  FutureEither<List<Produce>> getProduceAsList(List<String> produceIdList) async {
    if (await networkInfo.isConnected) {
      try {
        final produceList = await remoteDatasource.getProduceAsList(produceIdList);
        return Right(produceList);
      } on ProduceManagerException catch (e) {
        return Left(
            ProduceManagerFailure(code: e.code, message: e.message, stackTrace: e.stackTrace));
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
  FutureEither<FarmhubUser> addToFavorites(FarmhubUser farmhubUser, String produceId) async {
    if (await networkInfo.isConnected) {
      try {
        final updatedFarmhubUser = await remoteDatasource.addToFavorites(farmhubUser, produceId);
        globalAuthCubit.updateFarmhubUser(updatedFarmhubUser);

        return Right(updatedFarmhubUser);
      } on ProduceManagerException catch (e) {
        return Left(
            ProduceManagerFailure(code: e.code, message: e.message, stackTrace: e.stackTrace));
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
  FutureEither<FarmhubUser> removeFromFavorites(FarmhubUser farmhubUser, String produceId) async {
    if (await networkInfo.isConnected) {
      try {
        final updatedFarmhubUser =
            await remoteDatasource.removeFromFavorites(farmhubUser, produceId);
        globalAuthCubit.updateFarmhubUser(updatedFarmhubUser);

        return Right(updatedFarmhubUser);
      } on ProduceManagerException catch (e) {
        return Left(ProduceManagerFailure(
          code: e.code,
          message: e.message,
          stackTrace: e.stackTrace,
        ));
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
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
  FutureEither<List<Produce>> getProduceFavorites(FarmhubUser farmhubUser) async {
    if (await networkInfo.isConnected) {
      try {
        final userProduceFavoritesIdList =
            produceFavoritesToProduceId(farmhubUser.produceFavoritesList);
        final produceFavoritesList = await remoteDatasource
            .getProduceAsList(userProduceFavoritesIdList)
            .then((retrievedProduceFavoritesList) async {
          // At this point, we need to check if any of the produce is deleted. This part of the code
          // is only to update the favorites list of the FarmhubUser, locally and remote.

          /// How do we check if the produce is deleted? It's simple, [getProduceAsList] already filters
          /// out [Produce] which are marked as deleted. And so we just find out which [Produce] is missing
          /// from [userProduceFavoritesIdList] based on [retrievedProduceFavoritesList]

          /// Basically, we loop through [userProduceFavoritesIdList] and check it against [retrievedProduceFavoritesList],
          /// Whenever there is a match, we keep it in [produceIdToDelete].
          final retrievedProduceIdList = produceToProduceId(retrievedProduceFavoritesList);

          List<String> produceIdToDelete = [];
          for (String produceId in userProduceFavoritesIdList) {
            if (retrievedProduceIdList.contains(produceId)) {
              // Do nothing
            } else {
              produceIdToDelete.add(produceId);
            }
          }

          // //! Debugging Prints
          // print("-----> Retrieved Favorites Produce");
          // for (Produce produceFavorite in retrievedProduceFavoritesList) {
          //   print(produceFavorite.produceId);
          // }
          // print("-----> Produce IDs to Delete");
          // for (String produceId in produceIdToDelete) {
          //   print(produceId);
          // }

          if (userProduceFavoritesIdList.isEmpty) {
            // Do nothing.
          } else {
            // Delete the produceId from FarmhubUser
            for (String produceId in produceIdToDelete) {
              farmhubUser.produceFavoritesList.removeWhere(
                (favorite) => favorite.produceId == produceId,
              );
            }

            await authRepository.updateRemoteUser(newUserData: farmhubUser);
            globalAuthCubit.updateFarmhubUser(farmhubUser);
          }

          await localDatasource.storeProduceFavorites(retrievedProduceFavoritesList);
          return retrievedProduceFavoritesList;
        });

        return Right(produceFavoritesList);
      } on ProduceManagerException catch (e) {
        return Left(ProduceManagerFailure(
          code: e.code,
          message: e.message,
          stackTrace: e.stackTrace,
        ));
      } catch (e, stack) {
        return Left(UnexpectedFailure(code: e.toString(), stackTrace: stack));
      }
    } else {
      debugPrint("Not connected - getFirstTenProduce()");
      try {
        final produceList = await localDatasource.retrieveProduceFavorites();

        return Right(produceList);
      } catch (e, stack) {
        return Left(UnexpectedFailure(message: e.toString(), stackTrace: stack));
      }
    }
  }
}
