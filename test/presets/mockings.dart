// ignore_for_file: subtype_of_sealed_class
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/network/network_info.dart';
import 'package:farmhub/features/farm_shop_manager/data/datasources/farm_shop_manager_remote_datasource.dart';
import 'package:farmhub/features/farm_shop_manager/domain/i_farm_shop_manager_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mocktail/mocktail.dart';

//! Cloud Firestore / FirebaseFirestor

class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockCollectionReference extends Mock implements CollectionReference<Map<String, dynamic>> {}

class MockDocumentReference extends Mock implements DocumentReference<Map<String, dynamic>> {}

class MockDocumentSnapshot extends Mock implements DocumentSnapshot<Map<String, dynamic>> {}

class MockQuery extends Mock implements Query {}

class MockQuerySnapshot extends Mock implements QuerySnapshot {}

class MockQueryDocumentSnapshot extends Mock implements QueryDocumentSnapshot {}

//! Firebase Auth

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUserCredential extends Mock implements UserCredential {}

class MockUser extends Mock implements User {}

//! Local

class MockAuthRemoteDataSource extends Mock implements IAuthRemoteDataSource {}

class MockAuthLocalDataSource extends Mock implements IAuthLocalDataSource {}

class MockNetworkInfo extends Mock implements INetworkInfo {}

class MockFarmShopManagerRepository extends Mock implements IFarmShopManagerRepository {}

class MockFarmShopManagerRemoteDatasource extends Mock implements IFarmShopManagerRemoteDatasource {
}

class FakeFarmhubUser extends Fake implements FarmhubUser {}
