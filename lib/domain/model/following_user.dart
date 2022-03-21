import 'package:freezed_annotation/freezed_annotation.dart';

part 'following_user.freezed.dart';

@freezed
class FollowingUser with _$FollowingUser {
  factory FollowingUser({
    required String uid,
    required String displyaName,
    required String email,
    required String createdAt,
  }) = _FollowingUser;
}