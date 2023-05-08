import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import 'package:farmhub/core/auth/data/repository/auth_repository.dart';
import 'package:farmhub/core/auth/global_auth_cubit/global_auth_cubit.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_local_datasource.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_manager_remote_datasource.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_prices_remote_datasource.dart';
import 'package:farmhub/features/produce_manager/data/repository/produce_manager_repository.dart';
import 'package:farmhub/features/produce_manager/domain/entities/produce/produce.dart';

class MockProduceManagerRemoteDatasource extends Mock implements IProduceManagerRemoteDatasource {}

class MockProduceManagerLocalDatasource extends Mock implements IProduceManagerLocalDatasource {}

class MockProducePricesRemoteDatasource extends Mock implements IProducePricesRemoteDatasource {}

class MockAuthRepository extends Mock implements IAuthRepository {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

class MockGlobalAuthCubit extends Mock implements GlobalAuthCubit {}

class FakeProduce extends Fake implements Produce {}

void main() {
  late ProduceManagerRepository repository;

  late MockProduceManagerRemoteDatasource mockRemoteDatasource;
  late MockProduceManagerLocalDatasource mockLocalDatasource;
  late MockAuthRepository mockAuthRepository;
  late MockNetworkInfo mockNetworkInfo;
  late MockGlobalAuthCubit mockGlobalAuthCubit;
  late MockProducePricesRemoteDatasource mockProducePricesRemoteDatasource;

  setUp(() {
    mockRemoteDatasource = MockProduceManagerRemoteDatasource();
    mockLocalDatasource = MockProduceManagerLocalDatasource();
    mockNetworkInfo = MockNetworkInfo();
    mockAuthRepository = MockAuthRepository();
    mockGlobalAuthCubit = MockGlobalAuthCubit();
    mockProducePricesRemoteDatasource = MockProducePricesRemoteDatasource();

    repository = ProduceManagerRepository(
      localDatasource: mockLocalDatasource,
      networkInfo: mockNetworkInfo,
      remoteDatasource: mockRemoteDatasource,
      authRepository: mockAuthRepository,
      globalAuthCubit: mockGlobalAuthCubit,
      pricesRemoteDatasource: mockProducePricesRemoteDatasource,
    );

    registerFallbackValue(FakeProduce());
  });

  group('ProduceManagerRepository', () {
    group('getFirstTenProduce() ->', () {
      group('[online]', () {
        setUp(() {
          when(
            () => mockNetworkInfo.isConnected,
          ).thenAnswer((_) async => true);
        });

        test(
          'should check device is online',
          () async {
            // arrange
            when(() => mockRemoteDatasource.getFirstTenProduce())
                .thenAnswer((_) async => tFirstTenProduce);
            // act
            await repository.getFirstTenProduce();
            // assert
            verify(() => mockNetworkInfo.isConnected);
          },
        );

        test(
          'should return List<Produce> when request is succesfull',
          () async {
            // arrange
            when(() => mockRemoteDatasource.getFirstTenProduce())
                .thenAnswer((_) async => tFirstTenProduce);
            // act
            final result = await repository.getFirstTenProduce();
            // assert
            expect(result, Right(tFirstTenProduce));
          },
        );

        test(
          'should store List<Produce> when request is successful as the most recent',
          () async {
            // arrange

            // act

            // assert
          },
        );
      });
    });
  });
}

List<Produce> tFirstTenProduce = [
  Produce(
      produceId: 'tpid',
      produceName: 'tproduceName',
      currentProducePrice: {
        "price": 10.00,
        "updateDate": "11-11-1111",
      },
      previousProducePrice: {
        "price": 20.00,
        "updateDate": "10-11-1111",
      },
      weeklyPrices: {"10-10-1000": 24},
      authorId: 'tauthorId',
      lastUpdateTimeStamp: clock.now()),
  Produce(
      produceId: 'tpid',
      produceName: 'tproduceName',
      currentProducePrice: {
        "price": 10.00,
        "updateDate": "11-11-1111",
      },
      previousProducePrice: {
        "price": 20.00,
        "updateDate": "10-11-1111",
      },
      weeklyPrices: {"10-10-1000": 24},
      authorId: 'tauthorId',
      lastUpdateTimeStamp: clock.now()),
  Produce(
      produceId: 'tpid',
      produceName: 'tproduceName',
      currentProducePrice: {
        "price": 10.00,
        "updateDate": "11-11-1111",
      },
      previousProducePrice: {
        "price": 20.00,
        "updateDate": "10-11-1111",
      },
      weeklyPrices: {"10-10-1000": 24},
      authorId: 'tauthorId',
      lastUpdateTimeStamp: clock.now()),
];
