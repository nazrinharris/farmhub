import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../auth/domain/entities/farmhub_config.dart';
import '../errors/exceptions.dart';
import '../util/app_const.dart';

abstract class IAppVersionLocalDatasource {
  Future<Unit> storeFarmhubConfig(FarmhubConfig farmhubConfig);
  Future<FarmhubConfig> retrieveFarmhubConfig();
}

class AppVersionLocalDatasource implements IAppVersionLocalDatasource {
  @override
  Future<Unit> storeFarmhubConfig(FarmhubConfig newConfig) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString("farmhubConfig");
    FarmhubConfig currentConfig;

    // If a configuration already exists in shared preferences,
    // initialize currentConfig with it.
    if (jsonString != null) {
      currentConfig = FarmhubConfig.fromJson(jsonDecode(jsonString));
    } else {
      // Otherwise, initialize with default values.
      currentConfig = const FarmhubConfig(
        minimumAppVersion: '',
        latestAppVersion: '',
        localAppVersion: '',
      );
    }

    // Create a new configuration, preserving localAppVersion from the current configuration
    final updatedConfig = FarmhubConfig(
      minimumAppVersion: newConfig.minimumAppVersion ?? currentConfig.minimumAppVersion,
      latestAppVersion: newConfig.latestAppVersion ?? currentConfig.latestAppVersion,
      localAppVersion: newConfig.localAppVersion ?? currentConfig.localAppVersion,
    );

    // Store the updated configuration back into shared preferences
    final jsonConfig = updatedConfig.toJson();
    await prefs.setString("farmhubConfig", jsonEncode(jsonConfig));

    return unit;
  }

  @override
  Future<FarmhubConfig> retrieveFarmhubConfig() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString("farmhubConfig");

    // Check if a configuration exists in shared preferences
    if (jsonString != null) {
      // If a configuration exists, parse it from JSON and return
      return FarmhubConfig.fromJson(jsonDecode(jsonString));
    } else {
      // If no configuration exists, return null
      throw AuthLocalDatasourceException(
        code: AL_NO_FARMHUB_CONFIG,
        message: "No configuration is stored in this device",
        stackTrace: StackTrace.current,
      );
    }
  }
}
