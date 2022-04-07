import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:repayer/data/model/following_user.dart';

part 'following_user_data.freezed.dart';
part 'following_user_data.g.dart';

@freezed
class FollowingUserData with _$FollowingUserData {
  factory FollowingUserData({
    @Default('') String uid,
    @Default('') String displayName,
    @Default('') String email,
  }) = _FollowingUserData;
  const FollowingUserData._();

  factory FollowingUserData.fromJson(Map<String, dynamic> json) =>
      _$FollowingUserDataFromJson(json);

  factory FollowingUserData.fromDocumentSnapShot(DocumentSnapshot doc) {
    final json = doc.data()! as Map<String, dynamic>;
    json['uid'] = doc.id;
    return FollowingUserData.fromJson(json);
  }

  FollowingUser toFollowingUser() {
    return FollowingUser(
      uid: uid,
      displayName: displayName,
      email: email,
    );
  }
}
