import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/core/app_version/app_version_remote_datasource.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../main.dart';
import '../auth/domain/entities/farmhub_config.dart';
import '../errors/exceptions.dart';
import '../errors/failures.dart';
import '../network/network_info.dart';
import '../typedefs/typedefs.dart';
import '../util/app_const.dart';
import 'app_version_helper.dart';
import 'app_version_local_datasource.dart';

abstract class IAppVersionRepository {
  FutureEither<FarmhubConfig> getFarmhubConfig();
  FutureEither<FarmhubConfig> getLocalFarmhubConfig();
  FutureEither<bool> refreshAppVersion();
  FutureEither<bool> isAppVersionAllowed();
}

class AppVersionRepository implements IAppVersionRepository {
  final INetworkInfo networkInfo;
  final IAppVersionRemoteDatasource appVersionRemoteDatasource;
  final IAppVersionLocalDatasource appVersionLocalDatasource;

  AppVersionRepository({
    required this.networkInfo,
    required this.appVersionRemoteDatasource,
    required this.appVersionLocalDatasource,
  });

  @override
  FutureEither<FarmhubConfig> getFarmhubConfig() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await appVersionRemoteDatasource.configureAndGetFarmhubConfig();
        final String currentAppVersion = await AppVersionHelper.getAppVersion();

        final newConfig = result.copyWith(localAppVersion: currentAppVersion);

        await appVersionLocalDatasource.storeFarmhubConfig(newConfig);

        return Right(newConfig);
      } on AuthException catch (e, stack) {
        debugPrint(e.toString());
        return Left(AuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } on FirebaseException catch (e, stack) {
        return Left(FirebaseAuthFailure(
          code: e.code,
          message: e.message,
          stackTrace: stack,
        ));
      } catch (e, stack) {
        return Left(
          UnexpectedFailure(
            message: "An unexpected error occured while getting farmhub config",
            code: e.toString(),
            stackTrace: stack,
          ),
        );
      }
    } else {
      return Left(InternetConnectionFailure(
        code: ERROR_NO_INTERNET_CONNECTION,
        message: MESSAGE_NO_INTERNET_CONNECTION,
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  FutureEither<FarmhubConfig> getLocalFarmhubConfig() async {
    try {
      final result = await appVersionLocalDatasource.retrieveFarmhubConfig();

      return Right(result);
    } catch (e, stack) {
      return Left(
        UnexpectedFailure(
          message: "An unexpected error occured while getting local farmhub config",
          code: e.toString(),
          stackTrace: stack,
        ),
      );
    }
  }

  @override
  FutureEither<bool> refreshAppVersion() async {
    try {
      final resLocalFarmhubConfig = await appVersionLocalDatasource.retrieveFarmhubConfig();

      final localAppVersion = resLocalFarmhubConfig.localAppVersion;
      final appVersion = await PackageInfo.fromPlatform().then((value) => value.version);

      if (localAppVersion != appVersion) {
        appVersionRemoteDatasource.updateAppVersionClaim();
        return const Right(true);
      }
      return const Right(false);
    } catch (e, stack) {
      return Left(
        UnexpectedFailure(
          message: "An unexpected error occured while getting local farmhub config",
          code: e.toString(),
          stackTrace: stack,
        ),
      );
    }
  }

  @override
  FutureEither<bool> isAppVersionAllowed() async {
    if (bypassVersionRestriction) {
      return const Right(true);
    }

    try {
      final remoteConfig = await appVersionRemoteDatasource.getFarmhubConfig();
      final localConfig = await appVersionLocalDatasource.retrieveFarmhubConfig();

      if (localConfig.localAppVersion == null) {
        return Left(AppVersionFailure(
          stackTrace: StackTrace.current,
          code: AV_ERR_NO_LOCAL_VERSION,
          message: AV_MSG_NO_LOCAL_VERSION,
        ));
      }

      int currentAppVersion = AppVersionHelper.convertSemanticVersion(localConfig.localAppVersion!);
      int minimumAppVersion =
          AppVersionHelper.convertSemanticVersion(remoteConfig.minimumAppVersion!);

      return Right(currentAppVersion >= minimumAppVersion);
    } catch (e, stack) {
      return Left(
        UnexpectedFailure(
          message: "An unexpected error occured while getting farmhub config",
          code: e.toString(),
          stackTrace: stack,
        ),
      );
    }
  }
}
