import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../../domain/entities/farmhub_config.dart';

abstract class IAuthLocalDataSource {
  Future<Unit> storeFarmhubUser(FarmhubUser farmhubUser);
  Future<FarmhubUser> retrieveFarmhubUser();
  Future<Unit> storeFarmhubConfig(FarmhubConfig farmhubConfig);
  Future<FarmhubConfig> retrieveFarmhubConfig();

  Future<Unit> clearStoredFarmhubUser();
}

class AuthLocalDataSource implements IAuthLocalDataSource {
  @override
  Future<Unit> storeFarmhubUser(FarmhubUser farmhubUser) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonUser = farmhubUser.toJson();

    await prefs.setString("user", jsonEncode(jsonUser));

    return unit;
  }

  @override
  Future<FarmhubUser> retrieveFarmhubUser() async {
    final prefs = await SharedPreferences.getInstance();
    Map<String, dynamic> farmhubUserJson = {};

    final String? farmhubUserString = prefs.getString("user");
    if (farmhubUserString == null) {
      throw AuthLocalDatasourceException(
        code: AL_ERR_NO_USER,
        message: "No user is stored in this device",
        stackTrace: StackTrace.current,
      );
    } else {
      farmhubUserJson = jsonDecode(farmhubUserString) as Map<String, dynamic>;
    }

    return FarmhubUser.fromJson(farmhubUserJson);
  }

  @override
  Future<Unit> clearStoredFarmhubUser() async {
    final prefs = await SharedPreferences.getInstance();

    prefs.remove("user");

    return unit;
  }

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
      currentConfig = FarmhubConfig(
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
