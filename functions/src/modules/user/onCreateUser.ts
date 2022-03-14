import { baseFunction } from "../../utils";
import * as admin from "firebase-admin";

export const onCreateUser = baseFunction.auth.user().onCreate(async (user) => {
  await admin
    .firestore()
    .collection("users")
    .doc(user.uid)
    .set(
      {
        uid: user.uid,
        email: user.email ?? null,
        displayName: user.displayName,
        createdAt: admin.firestore.Timestamp.now(),
      },
      { merge: true }
    );
});
