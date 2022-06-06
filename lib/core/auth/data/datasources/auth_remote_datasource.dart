import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/constants/app_const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:clock/clock.dart';

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

  Future<FarmhubUser> retrieveUserData();

  Future<bool> isAdmin(String uid);

  Future<Unit> signOut();
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
    final FarmhubUser farmhubUser = await firebaseFirestore
        .collection(FS_USER_COLLECTION)
        .doc(resultUid)
        .get()
        .then((snapshot) => snapshot.data())
        .then((json) {
      if (json != null) {
        FarmhubUser toFarmhubUser = FarmhubUser.fromMap(json);
        return toFarmhubUser;
      } else {
        throw FirebaseException(
          plugin: FS_PLUGIN,
          code: FS_ERRCODE_JSON_NOT_FOUND,
          message: 'User document not found.',
          stackTrace: StackTrace.current,
        );
      }
    });

    return farmhubUser;
  }

  @override
  Future<FarmhubUser> registerWithEmailAndPassword(
      {required String email, required String password, required String username}) async {
    /// Start Registration Process - Register Method at FirebaseAuth
    final resultUid = await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((cred) => cred.user!.uid);

    /// Retrieve currentTime
    DateTime currentTime = clock.now();

    /// Format currentTime to createdAt
    String createdAt = DateFormat('yyyy-MM-dd').format(currentTime);

    /// Instantiate a [FarmhubUser] with populated fields
    final FarmhubUser farmhubUser = FarmhubUser(
      uid: resultUid,
      email: email,
      username: username,
      createdAt: createdAt,
      produceFavoritesList: [],
    );

    /// Store account data in Cloud Firestore
    await firebaseFirestore.collection(FS_USER_COLLECTION).doc(resultUid).set({
      "uid": farmhubUser.uid,
      "email": farmhubUser.email,
      "username": farmhubUser.username,
      "createdAt": farmhubUser.createdAt,
      "produceFavoritesMap": {},
    }, null);

    return farmhubUser;
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

  @override
  Future<FarmhubUser> retrieveUserData() async {
    final user = firebaseAuth.currentUser;

    if (user == null) {
      // TODO: Make a proper constant error code.
      throw FirebaseAuthException(code: 'user-not-signed-in', message: 'User is not signed in.');
    } else {
      final farmhubUser =
          await firebaseFirestore.collection(FS_USER_COLLECTION).doc(user.uid).get();

      if (farmhubUser == null) {
        throw FirebaseException(
          plugin: FS_PLUGIN,
          code: FS_ERRCODE_JSON_NOT_FOUND,
          message: 'User document not found.',
          stackTrace: StackTrace.current,
        );
      } else {
        return FarmhubUser.fromMap(farmhubUser.data()!);
      }
    }
  }

  @override
  Future<Unit> signOut() async {
    await firebaseAuth.signOut();
    return unit;
  }

  @override
  Future<bool> isAdmin(String uid) async {
    //TODO: Make proper constant collectionPath
    final result = await firebaseFirestore.collection('admins').doc(uid).get();

    if (result.data() == null) {
      return false;
    } else {
      return true;
    }
  }
}
