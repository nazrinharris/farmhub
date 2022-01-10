// ignore_for_file: constant_identifier_names

/// Local App [ErrorCodes]
///
/// Do not change.
const String ERROR_NO_INTERNET_CONNECTION = 'ERROR_NO_INTERNET_CONNECTION';
const String ERROR_NOT_SAME_PASSWORD = 'ERROR_NOT_SAME_PASSWORD';
const String ERROR_USER_NOT_FOUND = 'ERROR_USER_NOT_FOUND';
const String ERROR_UNKNOWN_OCCURED = 'ERROR_UNKNOWN_OCCURED';
const String ERROR_EMAIL_ALREADY_USED = 'ERROR_EMAIL_ALREADY_USED';

/// Local App [ErrorMessages]
///
/// Can be changed.
const String MESSAGE_NO_INTERNET_CONNECTION =
    'Sorry, it seems like you are not connected to the internet, please try again';
const String MESSAGE_NOT_SAME_PASSWORD =
    'Sorry, the passwords you entered are not the same';
const String MESSAGE_USER_NOT_FOUND = 'Sorry, you are not logged in';
const String MESSAGE_EMAIL_ALREADY_IN_USE =
    'Sorry, this email is already in use';

/// Firebase [PluginCodes]
/// These codes are meant to give context to the exception, because [FirebaseException] is used
/// throughout the Firebase Suite and it's generic.
///
/// Do not change.
const String FIRESTORE_PLUGIN = 'FIRESTORE_PLUGIN';
const String UNSPECIFIED_PLUGIN = 'UNSPECIFIED_PLUGIN';
