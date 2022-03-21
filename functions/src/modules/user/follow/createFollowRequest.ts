import * as admin from "firebase-admin";
import { baseFunction } from "../../../utils"
import { checkRequestEmail } from "./checkRequestEmail";
import { RuntimeOptions } from "firebase-functions";
import { UserType } from "../../../types/user";
import { FollowRequstProcess } from "../../../types/follow/followRequest";

const runtimeOpts: RuntimeOptions = {
  timeoutSeconds: 540,
};

type CheckRequestEmailType = {
  requestUserId: string;
  email: string;
};

checkRequestEmail;

export const createFollowRequest = baseFunction
  .runWith(runtimeOpts)
  .https.onCall(async (data, context): Promise<void> => {

    const db = admin.firestore();
    const request = data as CheckRequestEmailType;

    const followingUserSnapshot = await db
      .collection("users")
      .where("email", "==", request.email)
      .get();
    const followingUser = followingUserSnapshot.docs[0].data() as UserType

    const followRequest = {
      followerEmail: followingUser.email,
      followerDisplayName: followingUser.displayName,
      followerUserId: followingUser.uid,
      requestUserid: request.requestUserId,
      process: FollowRequstProcess.requested,
    }
    await db
      .collection("users")
      .doc(request.requestUserId)
      .collection("followRequsts")
      .add(followRequest);
  });