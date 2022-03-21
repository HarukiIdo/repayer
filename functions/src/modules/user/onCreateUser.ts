import { baseFunction } from "../../utils";
import * as admin from "firebase-admin";
import { logger, RuntimeOptions } from "firebase-functions";

const runtimeOpts: RuntimeOptions = {
  timeoutSeconds: 540,
}

export const onCreateUser = baseFunction
  .runWith(runtimeOpts).auth.user().onCreate(async (user) => {
    try {
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
    } catch (e) {
      logger.error(e);
    }
  });
