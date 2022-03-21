import { baseFunction } from "../../utils";
import { User } from "../../models/user";
import { RuntimeOptions } from "firebase-functions/v1";


const runtimeOpts: RuntimeOptions = {
  timeoutSeconds: 540,
}

export const onUpdateUser = baseFunction
  .runWith(runtimeOpts).firestore.document("users/{userUid}")
  .onUpdate(async (change, context) => {

  })