import 'package:farmhub/core/constants/app_const.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_local_datasource.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_remote_datasource.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';
import 'package:farmhub/core/typedefs/typedefs.dart';
import 'package:farmhub/features/produce_manager/domain/i_produce_manager_repository.dart';
import 'package:fpdart/fpdart.dart';

const String ProduceManagerRepositoryCode = "PMR-";

class ProduceManagerRepository implements IProduceManagerRepository {
  final INetworkInfo networkInfo;
  final IProduceManagerRemoteDatasource remoteDatasource;
  final IProduceManagerLocalDatasource localDatasource;

  ProduceManagerRepository({
    required this.networkInfo,
    required this.remoteDatasource,
    required this.localDatasource,
  });

  @override
  FutureEither<List<Produce>> getFirstTenProduce() async {
    final isConnected = await networkInfo.isConnected;

    if (isConnected) {
      try {
        final firstTenProduce = await remoteDatasource.getFirstTenProduce();
        print("Successful getFirstTenProduce!");
        return Right(firstTenProduce);
      } catch (e) {
        return Left(
          UnexpectedFailure(
            code: (ProduceManagerRepositoryCode + 'getFirstTenProduce()'),
            message: e.toString(),
          ),
        );
      }
    } else {
      return const Left(
        InternetConnectionFailure(
          code: ProduceManagerRepositoryCode + ERROR_NO_INTERNET_CONNECTION,
          message: MESSAGE_NO_INTERNET_CONNECTION,
        ),
      );
    }
  }

  @override
  FutureEither<List<Produce>> getNextTenProduce() {
    // TODO: implement getNextTenProduce
    throw UnimplementedError();
  }

  @override
  FutureEither<Produce> getSpecificProduce({required String pid}) {
    // TODO: implement getSpecificProduce
    throw UnimplementedError();
  }
}
