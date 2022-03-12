import * as admin from "firebase-admin";
import {baseFunction} from "../../../utils";
import {UserType} from "../../../types/user";
import {FollowingType} from "../../../types/following/following";

const runtimeOpts = {
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

export const checkinviteRequestEmail =
  baseFunction
      .runWith(runtimeOpts)
      .https
      .onCall(async (data, context): Promise<ResultType> => {
        const auth = context.auth;

        if (auth == null) {
          return {error: "ユーザ認証でエラーが発生しました", result: false};
        }

        const request = data as CheckInviteRequestEmailType;

        const db = admin.firestore();

        const checkUserSnapshot = await db
            .collection("users")
            .where("email", "==", request.email)
            .get();

        if (checkUserSnapshot.size == 0) {
          return {error: "メールアドレスが存在しません", result: false};
        }

        // emailを持つユーザが存在しない
        const requestUserSnapshot = await db
            .collection("users")
            .doc(request.requestUserId)
            .get();
        const user = requestUserSnapshot.data() as UserType;
        const checkUser = checkUserSnapshot.docs[0].data() as UserType;

        // 自分自身を追加することは出来ない
        if (user.email == checkUser.email) {
          return {error: "メールアドレスは利用できません", result: false};
        }

        const followingUserSnapshot = await db
            .collection("users")
            .doc(request.requestUserId)
            .collection("following")
            .get();

        const followingUsers = followingUserSnapshot.docs.map((doc) => doc.data() as FollowingType);

        for (const followingUser of followingUsers) {
          if (followingUser.uid == checkUser.uid) {
            return {error: "既にフォロー済みのメールアドレスです", result: false};
          }
        }


        return {error: null, result: true};
      });
