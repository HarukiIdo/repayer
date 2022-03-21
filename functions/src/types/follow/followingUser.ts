import { DocumentReference } from "@google-cloud/firestore";

export type FollowingUserType = {
  uid: string,
  ref: DocumentReference;
}
