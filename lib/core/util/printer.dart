import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../auth/domain/entities/farmhub_user/farmhub_user.dart';

void prettyPrintJson(Map<String, dynamic> json) {
  JsonEncoder encoder = const JsonEncoder.withIndent('  ');
  String prettyPrint = encoder.convert(json);
  debugPrint(prettyPrint);
}

void debugPrintUserData(String title, FarmhubUser user) {
  debugPrint('''
        $title:
            uid : ${user.uid}
            email : ${user.email}
            username : ${user.username}
            userType : ${user.userType}
            numberOfFavorites : ${user.produceFavoritesList.length}
        ''');
}
