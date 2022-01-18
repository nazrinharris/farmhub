import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/constants/app_const.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRemoteDataSource {
  Future<FarmhubUser> loginWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<FarmhubUser> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
  });

  Future<FarmhubUser> loginWithGoogleAccount();

  Future<FarmhubUser> registerWithGoogleAccount();
}

class AuthRemoteDataSource implements IAuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  AuthRemoteDataSource({
    required this.firebaseAuth,
    required this.firebaseFirestore,
  });

  @override
  Future<FarmhubUser> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    final resultUid = await firebaseAuth
        .signInWithEmailAndPassword(
          email: email,
          password: password,
        )
        .then((user) => user.user!.uid);
    final farmhubUser = await firebaseFirestore
        .collection(FS_USER_COLLECTION)
        .doc(resultUid)
        .get()
        .then((snapshot) => snapshot.data())
        .then((json) {
      if (json != null) {
        FarmhubUser.fromJson(json);
      } else {
        throw FirebaseException(
          plugin: FS_PLUGIN,
          code: FS_ERRCODE_JSON_NOT_FOUND,
          message: '',
          stackTrace: StackTrace.current,
        );
      }
    });
    return farmhubUser;
  }

  @override
  Future<FarmhubUser> registerWithEmailAndPassword(
      {required String email,
      required String password,
      required String username}) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<FarmhubUser> loginWithGoogleAccount() {
    // TODO: implement loginWithGoogleAccount
    throw UnimplementedError();
  }

  @override
  Future<FarmhubUser> registerWithGoogleAccount() {
    // TODO: implement registerWithGoogleAccount
    throw UnimplementedError();
  }
}
