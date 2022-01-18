// ignore_for_file: prefer_const_constructors

import 'package:farmhub/core/auth/domain/entities/farmhub_user/farmhub_user.dart';
import 'package:farmhub/core/constants/app_const.dart';
import 'package:farmhub/core/errors/failures.dart';

final FarmhubUser tFarmhubUser = FarmhubUser(
  username: tUsername,
  uid: 'tuid',
  email: 'temail@temail.temail',
  createdAt: '11/11/1111',
);

final InternetConnectionFailure tInternetConnectionFailure =
    InternetConnectionFailure(
  code: ERROR_NO_INTERNET_CONNECTION,
  message: MESSAGE_NO_INTERNET_CONNECTION,
);

const String tEmail = 'temail@temail.temail';
const String tPassword = 'tpassword';
const String tUsername = 'tusername';
const String tUid = 'tuid';
