import { baseFunction } from "../utils";
import * as admin from "firebase-admin";

export const onCreateUser = baseFunction.auth.user().onCreate(async (user) => {
  await admin
    .firestore()
    .collection('user')
    .doc(user.uid)
    .set(
      {
        uid: user.uid,
        email: user.email ?? null,
      },
      { merge: true }
    );
});