import { DocumentData } from "@google-cloud/firestore";
import { UserType } from "../types/user";


export class User {
  private user: UserType;

  constructor(data: DocumentData | undefined) {
    if (typeof data == undefined) {
      console.log("エラー発生");
    }
    this.user = data as UserType;
  }

  get _user() {
    return this.user;
  }
}