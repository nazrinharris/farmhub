import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppVersionHelper {
  static Future<bool> isAppVersionAllowed() async {
    // Fetch and activate Remote Config values
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.fetchAndActivate();

    // Get the app's current version
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String currentAppVersion = packageInfo.version;

    // Get the minimum app version from Remote Config
    String minimumAppVersion = remoteConfig.getString('minimum_app_version');

    // Compare the current app version with the minimum app version
    return currentAppVersion.compareTo(minimumAppVersion) >= 0;
  }
}
