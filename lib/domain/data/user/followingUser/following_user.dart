import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'following_user.freezed.dart';
part 'following_user.g.dart';

@freezed
class FollowingUser with _$FollowingUser {
  factory FollowingUser({
    @Default('') String uid,
    @Default('') String displayName,
    @Default('') String email,
  }) = _FollowingUser;

  factory FollowingUser.fromJson(Map<String, dynamic> json) =>
      _$FollowingUserFromJson(json);

  factory FollowingUser.fromDocumentSnapShot(DocumentSnapshot doc) {
    final json = doc.data()! as Map<String, dynamic>;
    json['uid'] = doc.id;
    return FollowingUser.fromJson(json);
  }

  FollowingUser toFollowingUser() {
    return FollowingUser(
      uid: uid,
      displayName: displayName,
      email: email,
    );
  }
}
