import { RuntimeOptions } from "firebase-functions/v1";
import { baseFunction } from "../../../utils";

const runtimeOpts: RuntimeOptions = {
  timeoutSeconds: 540,
}

export const onCreateFollowRequest = baseFunction.runWith(runtimeOpts).firestore
  .document("users/{user}/followRequests/{followRequest}")
  .onCreate(async (doc, context) => {
    const data = doc.data();
    console.log(data);
  });