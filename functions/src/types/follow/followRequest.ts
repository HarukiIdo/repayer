export const FollowRequstProcess = {
  approved: "approved",
  requested: "requested",
  rejected: "rejected",
  unfollow: "unfollow",
}

export type FollowRequestProcess =
  typeof FollowRequstProcess[keyof typeof FollowRequstProcess];

export type FollowRequestType = {
  followerEmail: boolean;
  followerDisplayName: string;
  followerUserId: string;
  requestUserid: string;
  process: FollowRequestProcess;
}