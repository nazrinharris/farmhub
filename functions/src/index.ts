import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
admin.initializeApp();



export const setAppVersion = functions
  .region("asia-southeast1")
  .https.onCall(async (data, context) => {
    const uid = context.auth?.uid;
    const appVersion = data.appVersion; 

    if (!uid) {
      throw new functions.https.HttpsError(
        "unauthenticated",
        "The function must be called by an authenticated user."
      );
    }

    if (!appVersion) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "The function must be called with an appVersion argument."
      );
    }

    await admin.auth().setCustomUserClaims(uid, {appVersion});

    return {success: true};
  });
