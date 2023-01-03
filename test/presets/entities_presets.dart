import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/core/errors/failures.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

import '../fixtures/fixture_reader.dart';

final FarmhubUser tFarmhubUser = FarmhubUser(
  username: tUsername,
  uid: 'tuid',
  email: 'temail@temail.temail',
  createdAt: '2021-11-28',
  produceFavoritesList: [],
  userType: UserType.regular,
);

const InternetConnectionFailure tInternetConnectionFailure = InternetConnectionFailure(
    code: ERROR_NO_INTERNET_CONNECTION,
    message: MESSAGE_NO_INTERNET_CONNECTION,
    stackTrace: StackTrace.empty);

const String tEmail = 'temail@temail.temail';
const String tPassword = 'tpassword';
const String tUsername = 'tusername';
const String tUid = 'tuid';
const String tCreatedAt = '2021-11-28';
const UserType tUserType = UserType.regular;
String todayCreatedAt = DateFormat('yyyy-MM-dd').format(DateTime.now());
DateTime tCurrentDate = DateTime.parse('2021-11-28');

Map<String, dynamic> tFarmhubUserJSON = json.decode(fixture('farmhub_user.json'));

Map<String, dynamic>? tnullMap;
