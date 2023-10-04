import 'package:cloud_functions/cloud_functions.dart';
import 'package:farmhub/core/auth/domain/entities/farmhub_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'app_version_helper.dart';

abstract class IAppVersionRemoteDatasource {
  Future<Unit> updateAppVersionClaim();
  Future<FarmhubConfig> configureAndGetFarmhubConfig();
  Future<FarmhubConfig> getFarmhubConfig();
}

class AppVersionRemoteDatasource implements IAppVersionRemoteDatasource {
  /// Updates the app version in the user's custom claims.
  ///
  /// This method should be called after the user authenticates.
  /// It updates the `appVersion` custom claim in the user's authentication token
  /// by calling the `setAppVersion`  Cloud Function.
  ///
  /// Returns a [Unit] value.
  @override
  Future<Unit> updateAppVersionClaim() async {
    await FirebaseAuth.instance.currentUser!.reload();

    // Call the setAppVersion Cloud Function after the user authenticates.
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    int appVersion = AppVersionHelper.convertSemanticVersion(packageInfo.version);
    // int testAppVersion = AppVersionHelper.convertSemanticVersion('2.3.2');

    final FirebaseFunctions functions = FirebaseFunctions.instanceFor(region: 'asia-southeast1');
    final HttpsCallable callable = functions.httpsCallable('setAppVersion');
    await callable.call(<String, dynamic>{
      /// Use [appVersion] for prod, and [testAppVersion] for testing.

      "appVersion": appVersion,
      // "appVersion": testAppVersion,
    }).then((_) async {
      final idTokenResult = await FirebaseAuth.instance.currentUser!.getIdTokenResult(true);
      dynamic appVersionClaim = idTokenResult.claims?['appVersion'];
      if (appVersionClaim != null) {
        debugPrint('The appVersion custom claim is present: $appVersionClaim');
      } else {
        debugPrint('The appVersion custom claim is not present.');
      }
    });

    return unit;
  }

  /// Fetches the app configuration from Firebase Remote Config.
  ///
  /// This method retrieves the `minimum_app_version` and `latest_app_version`
  /// values from Firebase Remote Config. It sets the configuration settings
  /// with different fetch intervals depending on the app's release mode
  /// (12 hours for production and 60 seconds for development).
  ///
  ///
  /// Returns a [FarmhubConfig] object containing the minimum and latest app versions.
  ///
  /// Differs slightly from [getFarmhubConfig], use it for quickly retrieving the config
  @override
  Future<FarmhubConfig> configureAndGetFarmhubConfig() async {
    late String minimumAppVersion;
    late String latestAppVersion;

    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    Duration fetchInterval = kReleaseMode ? const Duration(hours: 12) : const Duration(seconds: 60);

    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 60),
      minimumFetchInterval: fetchInterval,
    ));

    await remoteConfig.setDefaults(<String, dynamic>{
      'minimum_app_version': '0.1.0',
      'latest_app_version': '0.1.0',
    });
    await remoteConfig.fetchAndActivate().then((_) {
      minimumAppVersion = remoteConfig.getString('minimum_app_version');
      latestAppVersion = remoteConfig.getString('latest_app_version');
    });

    return FarmhubConfig(minimumAppVersion: minimumAppVersion, latestAppVersion: latestAppVersion);
  }

  /// Fetches the app configuration from Firebase Remote Config.
  ///
  /// Use [configureAndGetFarmhubConfig] if first setup or configuration of FirebaseRemoteConfig is needed.
  @override
  Future<FarmhubConfig> getFarmhubConfig() async {
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.fetchAndActivate();

    String minimumAppVersion = remoteConfig.getString('minimum_app_version');
    String latestAppVersion = remoteConfig.getString('latest_app_version');

    return FarmhubConfig(minimumAppVersion: minimumAppVersion, latestAppVersion: latestAppVersion);
  }
}
