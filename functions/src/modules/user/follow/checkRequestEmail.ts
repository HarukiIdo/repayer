import * as admin from "firebase-admin";
import { baseFunction } from "../../../utils";
import { UserType } from "../../../types/user";
import { FollowRequestType, FollowRequstProcess } from "../../../types/follow/followRequest";
import { FollowingUserType } from "../../../types/follow/followingUser";
import { logger, RuntimeOptions } from "firebase-functions";

const runtimeOpts: RuntimeOptions = {
  timeoutSeconds: 540,
};

type CheckInviteRequestEmailType = {
  requestUserId: string;
  email: string
};

type ResultType = {
  error: string | null;
  result: boolean;
};

export const checkRequestEmail = baseFunction
  .runWith(runtimeOpts)
  .https
  .onCall(async (data, context): Promise<ResultType> => {
    try {

      const auth = context.auth;

      if (auth == null) {
        return { error: "ユーザ認証でエラーが発生しました", result: false };
      }

      const request = data as CheckInviteRequestEmailType;

      const db = admin.firestore();

      const checkUserSnapshot = await db
        .collection("users")
        .where("email", "==", request.email)
        .get();

      // emailを持つユーザが存在しない
      if (checkUserSnapshot.size == 0) {
        return { error: "メールアドレスが存在しません", result: false };
      }

      const requestUserSnapshot = await db
        .collection("users")
        .doc(request.requestUserId)
        .get();
      const user = requestUserSnapshot.data() as UserType;
      const checkUser = checkUserSnapshot.docs[0].data() as UserType;

      // 自分自身を追加することは出来ない
      if (user.email == checkUser.email) {
        return { error: "メールアドレスは利用できません", result: false };
      }

      const followingUserSnapshot = await db
        .collection("users")
        .doc(request.requestUserId)
        .collection("following")
        .get();

      const followingUsers = followingUserSnapshot.docs.map(
        (doc) => doc.data() as FollowingUserType
      );

      // 既にフォロー済みかチェックする
      for (const followingUser of followingUsers) {
        if (followingUser.uid == checkUser.uid) {
          return { error: "既にフォロー済みのメールアドレスです", result: false };
        }
      }

      const followRequestSnapshot = await admin
        .firestore()
        .collection("users")
        .doc(request.requestUserId)
        .collection("followRequests")
        .get();

      // 既にリクエスト済みかチェックする
      for (const followRequestDoc of followRequestSnapshot.docs) {
        const followRequestData = followRequestDoc.data() as FollowRequestType;

        if (followRequestData.followerUserId == checkUser.uid &&
          followRequestData.process == FollowRequstProcess.requested) {
          return { error: "既に申請済みです", result: false }
        }
      }

      const followRequest = {
        followerEmail: checkUser.email,
        followerDisplayName: checkUser.displayName,
        followerUserId: checkUser.uid,
        requestUserid: request.requestUserId,
        process: FollowRequstProcess.requested,
      }

      await db
        .collection("users")
        .doc(request.requestUserId)
        .collection("followRequsts")
        .add(followRequest);


      return { error: null, result: true };
    } catch (e) {
      logger.error(e);
      return { error: "未知のエラー", result: false }
    }
  });
