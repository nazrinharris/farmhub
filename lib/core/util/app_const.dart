// ignore_for_file: constant_identifier_names

/// Local App [ErrorCodes]
///
/// Do not change.
const String ERROR_NO_INTERNET_CONNECTION = 'ERROR_NO_INTERNET_CONNECTION';
const String ERROR_NOT_SAME_PASSWORD = 'ERROR_NOT_SAME_PASSWORD';
const String ERROR_USER_NOT_FOUND = 'ERROR_USER_NOT_FOUND';
const String ERROR_UNKNOWN_OCCURED = 'ERROR_UNKNOWN_OCCURED';
const String ERROR_EMAIL_ALREADY_USED = 'ERROR_EMAIL_ALREADY_USED';
const String ERR_USERNAME_UNAVAILABLE = 'ERR_USERNAME_UNAVAILABLE';
const String ERR_APP_VERSION_NOT_SUPPORTED = 'ERR_APP_VERSION_NOT_SUPPORTED';

/// Local App [ErrorMessages]
///
/// Can be changed.
const String MESSAGE_NO_INTERNET_CONNECTION =
    'Sorry, it seems like you are not connected to the internet, please try again';
const String MESSAGE_NOT_SAME_PASSWORD = 'Sorry, the passwords you entered are not the same';
const String MESSAGE_USER_NOT_FOUND = 'Sorry, you are not logged in';
const String MESSAGE_EMAIL_ALREADY_IN_USE = 'Sorry, this email is already in use';
const String MESSAGE_APP_VERSION_NOT_SUPPORTED =
    'Sorry, your app version is outdated, please update your app';

/// Firebase [PluginCodes]
/// These codes are meant to give context to the exception, because [FirebaseException] is used
/// throughout the Firebase Suite and it's generic.
///
/// Do not change.
const String FS_PLUGIN = 'FS_PLUGIN';
const String UNSPECIFIED_PLUGIN = 'UNSPECIFIED_PLUGIN';

/// Firestore Permanent [CollectionPaths]
///
/// Do not change.
const String FS_USER = 'users';
const String FS_ADMIN = 'admins';
const String FS_GLOBAL_PRODUCE = 'produce';
const String FS_AGGREGATE_COLLECTION = 'aggregatePrices';
const String FS_AGGREGATE_DOC = 'aggregatePrices';
const String FS_PRICES_COLLECTION = 'prices';
const String FS_GLOBAL_FARM = 'farms';
const String FS_GLOBAL_SHOP = 'shops';
const String FS_USER_FARM = 'userFarms';
const String FS_USER_SHOP = 'userStores';

/// Firestore Error Codes [FirestoreCode]
///
/// Do not change.
const String FS_ERRCODE_JSON_NOT_FOUND = 'JSON_NOT_FOUND';

/// [ProduceManager]'s [ErrorCodes]
const String PM_ERR_LAST_PRICE = 'PM_ERR_LAST_PRICE';
const String PM_ERR_SAME_PRODUCE_NAME = 'PM_ERR_SAME_PRODUCE_NAME';
const String PM_ERR_EMPTY_PREVIOUS_PRODUCE_LIST = 'PM_ERR_EMPTY_PREVIOUS_PRODUCE_LIST';
const String PM_ERR_MULTI_PRICE_DOC = 'PM_ERR_MULTI_PRICE_DOC';
const String PM_ERR_DELETE_NONEXISTENT_FAVORITE = 'PM_ERR_DELETE_NONEXISTENT_FAVORITE';

/// [FarmShopManager]'s [ErrorCodes]
const String FSM_ERR_NOT_FARMER_OR_BUSINESS = 'FSM_ERR_NOT_FARMER_OR_BUSINESS';

/// [Auth]'s [ErrorCodes]
const String AUTH_NOT_SIGNED_IN = 'AUTH_NOT_SIGNED_IN';
const String AUTH_NO_EMAIL_FOR_PASSWORD_RESET = 'AUTH_NO_EMAIL_FOR_PASSWORD_RESET';
const String MSG_AUTH_NO_EMAIL_FOR_PASSWORD_RESET =
    "Sorry but you can't reset your password because no email is associated with your account";
const String AUTH_GOOGLE_SIGN_IN_ABORTED = 'AUTH_GOOGLE_SIGN_IN_ABORTED';
const String MSG_AUTH_GOOGLE_SIGN_IN_ABORTED =
    'It seems like you have cancelled the Google sign in, please try again.';
const String AUTH_USER_ALREADY_EXISTS = 'AUTH_USER_ALREADY_EXISTS';
const String MSG_AUTH_USER_ALREADY_EXISTS =
    'Sorry, this email is already in use, please try again.';

/// [AuthLocalDatasource]'s [ErrorCodes]
const String AL_ERR_NO_USER = 'ERR_NO_USER';
const String AL_NO_FARMHUB_CONFIG = 'AL_NO_FARMHUB_CONFIG';

/// [AppVersion]'s [ErrorCodes] and messages
const String AV_ERR_NO_LOCAL_VERSION = 'AV_ERR_NO_LOCAL_VERSION';
const String AV_MSG_NO_LOCAL_VERSION =
    'No local app version was ever stored, this should never happen.'; // This should never happen

/// [FarmhubUser] error codes
const String FU_ERR_STR_TYPE = "FU_ERR_STR_TYPE";
