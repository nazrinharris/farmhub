import 'package:package_info_plus/package_info_plus.dart';

/// If you are looking for where the app gets the minimum app version from, look at [AppVersionRepository].
class AppVersionHelper {
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
}
