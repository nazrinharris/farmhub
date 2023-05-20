import 'package:farmhub/core/auth/data/datasources/auth_local_datasource.dart';
import 'package:farmhub/core/auth/data/datasources/auth_remote_datasource.dart';
import 'package:farmhub/core/auth/data/repository/auth_repository.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../locator.dart';
import '../../main.dart';

/// If you are looking for where the app gets the minimum app version from, look at [getFarmhubConfig()]
/// in [AuthRemoteDatasource] in [auth_remote_data_source.dart].
///
/// If you are looking to manipulate user's app version, look at [updateAppVersionClaim()] in [AuthRemoteDatasource].
class AppVersionHelper {
  static Future<bool> isAppVersionAllowed() async {
    if (bypassVersionRestriction) {
      return true;
    }

    // Fetch and activate Remote Config values
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.fetchAndActivate();

    // Get the app's current version
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    int currentAppVersion = convertSemanticVersion(packageInfo.version);

    // Get the minimum app version from Remote Config
    int minimumAppVersion = convertSemanticVersion(remoteConfig.getString('minimum_app_version'));

    // Compare the current app version with the minimum app version
    return currentAppVersion >= minimumAppVersion;
  }

  static int convertSemanticVersion(String version) {
    List<String> versionParts = version.split(".");
    if (versionParts.length != 3) {
      throw const FormatException("Invalid version format");
    }

    int major = int.parse(versionParts[0]);
    int minor = int.parse(versionParts[1]);
    int patch = int.parse(versionParts[2]);

    if (major > 999 || minor > 999 || patch > 999) {
      throw const FormatException("Each part of the version must be between 0 and 999");
    }

    int integerVersion = major * 10000 + minor * 1000 + patch;
    return integerVersion;
  }

  static Future<String> getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    return packageInfo.version;
  }

  /// This method will update the app version claim in the user's custom claims.
  ///
  /// Returns true if user's custom claims are updated, false otherwise.
  static Future<bool> refreshAppVersion() async {
    final resLocalFarmhubConfig = await locator<IAuthLocalDataSource>().retrieveFarmhubConfig();

    final localAppVersion = resLocalFarmhubConfig.localAppVersion;
    final appVersion = await PackageInfo.fromPlatform().then((value) => value.version);

    if (localAppVersion != appVersion) {
      locator<IAuthRemoteDataSource>().updateAppVersionClaim();
      return true;
    }

    return false;
  }
}
