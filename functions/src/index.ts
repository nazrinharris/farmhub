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

    await admin.auth().setCustomUserClaims(uid, { appVersion });

    return { success: true };
  });

export const renameAggregatePrices = functions
  .region("asia-southeast1")
  .https.onRequest(async (req, res) => {
    const db = admin.firestore();

    // Get all documents in the "produce" collection
    const produceRef = db.collection("produce");
    const produceSnapshot = await produceRef.get();

    // For each document in the "produce" collection
    produceSnapshot.forEach((doc) => {
      const oldDocRef = doc.ref
        .collection("aggregatePrices")
        .doc("aggregatePrices2023");
      const newDocRef = doc.ref
        .collection("aggregatePrices")
        .doc("aggregatePrices");

      db.runTransaction(async (transaction) => {
        const oldDoc = await transaction.get(oldDocRef);
        const newDoc = await transaction.get(newDocRef);

        // If the "aggregatePrices2022" document exists and the "aggregatePrices" document does not exist
        if (oldDoc.exists && !newDoc.exists) {
          // Copy data from old document to new document
          transaction.set(newDocRef, oldDoc.data());

          // Delete old document
          transaction.delete(oldDocRef);
        }
      })
        .then(() => {
          console.log("Document successfully updated!");
        })
        .catch((error) => {
          console.error("Error updating document: ", error);
        });
    });

    res.send("Operation completed");
  });
