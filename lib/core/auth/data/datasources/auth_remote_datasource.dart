import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/app_version/app_version_remote_datasource.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/core/util/misc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:clock/clock.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:cloud_functions/cloud_functions.dart';

import '../../../../locator.dart';
import '../../../util/secure.dart' as secure;

abstract class IAuthRemoteDataSource {
  Future<FarmhubUser> loginWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<FarmhubUser> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
    required UserType userType,
  });

  Future<FarmhubUser> createAccountWithPhone({
    required String uid,
    required String phoneNumber,
  });

  Future<FarmhubUser> registerWithCredentials({
    required String uid,
    required String? email,
    required String displayName,
  });

  Future<UserCredential> signInWithGoogle();
  Future<UserCredential> signInWithApple();

  Future<Unit> chooseUserType(String uid, UserType userType);

  Future<FarmhubUser> retrieveUserData({String? uid});

  Future<FarmhubUser> updateRemoteUser(FarmhubUser newUserData);

  Future<bool> isAdmin(String uid);

  Future<Unit> sendPasswordResetEmail(String email);

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

    try {
      await locator<IAppVersionRemoteDatasource>().updateAppVersionClaim();
    } on FirebaseFunctionsException {
      // Sign the user out and rethrow the error
      await signOut();
      rethrow;
    }

    final FarmhubUser farmhubUser = await firebaseFirestore
        .collection(FS_USER)
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
  Future<FarmhubUser> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
    required UserType userType,
  }) async {
    /// Check if there already exists the username.
    final resultingQuery = await firebaseFirestore
        .collection('users')
        .where("username", isEqualTo: username)
        .get()
        .then(
          (value) => value.docs,
        );
    if (resultingQuery.isNotEmpty) {
      throw AuthException(
        code: ERR_USERNAME_UNAVAILABLE,
        message: "Sorry, this username is not available",
        stackTrace: StackTrace.current,
      );
    }

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
      userType: userType,
      phoneNumber: null,
    );

    /// Store account data in Cloud Firestore
    await firebaseFirestore.collection(FS_USER).doc(resultUid).set({
      "uid": farmhubUser.uid,
      "email": farmhubUser.email,
      "username": farmhubUser.username,
      "createdAt": farmhubUser.createdAt,
      "produceFavoritesMap": {},
      "userType": userType.typeAsString,
      "phoneNumber": null,
    }, null);

    try {
      await locator<IAppVersionRemoteDatasource>().updateAppVersionClaim();
    } on FirebaseFunctionsException {
      // Sign the user out and rethrow the error
      await signOut();
      rethrow;
    }

    return farmhubUser;
  }

  @override
  Future<FarmhubUser> retrieveUserData({String? uid}) async {
    String uidToSearch;
    final user = firebaseAuth.currentUser;

    if (user == null) {
      throw FirebaseAuthException(
        code: AUTH_NOT_SIGNED_IN,
        message: 'User is not signed in.',
      );
    } else {
      if (uid == null) {
        uidToSearch = user.uid;
      } else {
        uidToSearch = uid;
      }

      final farmhubUserJson = await firebaseFirestore
          .collection(FS_USER)
          .doc(uidToSearch)
          .get()
          .then((value) => value.data());

      if (farmhubUserJson == null) {
        throw FirebaseException(
          plugin: FS_PLUGIN,
          code: FS_ERRCODE_JSON_NOT_FOUND,
          message: 'User document not found.',
          stackTrace: StackTrace.current,
        );
      }
      return FarmhubUser.returnRespectiveUserType(FarmhubUser.fromMap(farmhubUserJson));
    }
  }

  @override
  Future<Unit> signOut() async {
    await firebaseAuth.signOut();
    return unit;
  }

  @override
  Future<bool> isAdmin(String uid) async {
    final result = await firebaseFirestore.collection(FS_ADMIN).doc(uid).get();

    if (result.data() == null) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<FarmhubUser> updateRemoteUser(FarmhubUser newUserData) async {
    await firebaseFirestore
        .collection('users')
        .doc(newUserData.uid)
        .update(FarmhubUser.toMap(newUserData));

    final user = await firebaseFirestore
        .collection('users')
        .doc(newUserData.uid)
        .get()
        .then((value) => FarmhubUser.fromMap(value.data()));

    return user;
  }

  @override
  Future<Unit> sendPasswordResetEmail(String email) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);

    return unit;
  }

  @override
  Future<Unit> chooseUserType(String uid, UserType userType) async {
    final Map<String, dynamic> regularMap = {"userType": userType.typeAsString};
    final Map<String, dynamic> farmOrBusinessMap = {
      "userType": userType.typeAsString,
      "userFarms": {},
      "userShops": {},
    };

    late Map<String, dynamic> mapToUpdate;

    if (userType == UserType.farmer || userType == UserType.business) {
      mapToUpdate = farmOrBusinessMap;
    } else {
      mapToUpdate = regularMap;
    }

    await firebaseFirestore
        .collection('users')
        .doc(uid)
        .update(mapToUpdate)
        .then((value) => debugPrint("Change Success!"));

    await locator<IAppVersionRemoteDatasource>().updateAppVersionClaim();

    return unit;
  }

  @override
  Future<FarmhubUser> createAccountWithPhone({
    required String uid,
    required String phoneNumber,
  }) async {
    final String tempName = generateRandomName();

    String createdAt = DateFormat('yyyy-MM-dd').format(clock.now());

    await firebaseFirestore.collection(FS_USER).doc(uid).set({
      "uid": uid,
      "email": null,
      "username": tempName,
      "createdAt": createdAt,
      "produceFavoritesMap": {},
      "phoneNumber": phoneNumber,
      "userType": UserType.regular.typeAsString,
    });

    final user = FarmhubUser(
      uid: uid,
      email: null,
      username: tempName,
      phoneNumber: PhoneNumber(isoCode: IsoCode.MY, nsn: phoneNumber),
      createdAt: createdAt,
      produceFavoritesList: [],
      userType: UserType.regular,
    );

    try {
      await locator<IAppVersionRemoteDatasource>().updateAppVersionClaim();
    } on FirebaseFunctionsException {
      // Sign the user out and rethrow the error
      await signOut();
      rethrow;
    }
    return user;
  }

  @override
  Future<FarmhubUser> registerWithCredentials({
    required String uid,
    required String? email,
    required String displayName,
  }) async {
    String createdAt = DateFormat('yyyy-MM-dd').format(clock.now());

    await firebaseFirestore.collection(FS_USER).doc(uid).set({
      "uid": uid,
      "email": email,
      "username": displayName,
      "createdAt": createdAt,
      "produceFavoritesMap": {},
      "phoneNumber": null,
      "userType": null,
    });

    final user = FarmhubUser(
      uid: uid,
      email: email,
      username: displayName,
      createdAt: createdAt,
      produceFavoritesList: [],
      userType: UserType.regular,
    );

    debugPrint("AuthRemoteDatasource - registerWithCredentials()");
    debugPrint(user.toString());

    try {
      await locator<IAppVersionRemoteDatasource>().updateAppVersionClaim();
    } on FirebaseFunctionsException {
      // Sign the user out and rethrow the error
      await signOut();
      rethrow;
    }

    return user;
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn.standard(scopes: <String>['email']);

    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount == null) {
      throw AuthException(
        code: AUTH_GOOGLE_SIGN_IN_ABORTED,
        message: MSG_AUTH_GOOGLE_SIGN_IN_ABORTED,
        stackTrace: StackTrace.current,
      );
    }

    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential userCredential = await firebaseAuth.signInWithCredential(credential);

    try {
      await locator<IAppVersionRemoteDatasource>().updateAppVersionClaim();
    } on FirebaseFunctionsException {
      // Sign the user out and rethrow the error
      await signOut();
      rethrow;
    }

    return userCredential;
  }

  @override
  Future<UserCredential> signInWithApple() async {
    // To prevent replay attacks with the credential returned from Apple, we
    // include a nonce in the credential request. When signing in with
    // Firebase, the nonce in the id token returned by Apple, is expected to
    // match the sha256 hash of `rawNonce`.
    final rawNonce = secure.generateNonce();
    final nonce = secure.sha256ofString(rawNonce);

    // Request credential for the currently signed in Apple account.
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    // Create an `OAuthCredential` from the credential returned by Apple.
    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );

    // Sign in the user with Firebase. If the nonce we generated earlier does
    // not match the nonce in `appleCredential.identityToken`, sign in will fail.
    final userCred = await FirebaseAuth.instance.signInWithCredential(oauthCredential);

    try {
      await locator<IAppVersionRemoteDatasource>().updateAppVersionClaim();
    } on FirebaseFunctionsException {
      // Sign the user out and rethrow the error
      await signOut();
      rethrow;
    }

    return userCred;
  }
}
