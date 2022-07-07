import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/errors/exceptions.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

abstract class IAuthLocalDataSource {
  Future<Unit> storeFarmhubUser(FarmhubUser farmhubUser);
  Future<FarmhubUser> retrieveFarmhubUser();
}

class AuthLocalDataSource implements IAuthLocalDataSource {
  @override
  Future<Unit> storeFarmhubUser(FarmhubUser farmhubUser) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonUser = FarmhubUser.toMap(farmhubUser);

    await prefs.setString("user", jsonEncode(farmhubUser));
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
      farmhubUserJson == jsonDecode(farmhubUserString) as Map<String, dynamic>;
    }

    return FarmhubUser.fromMap(farmhubUserJson);
  }
}
