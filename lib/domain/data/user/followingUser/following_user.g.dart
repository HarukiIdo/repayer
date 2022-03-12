// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FollowingUser _$$_FollowingUserFromJson(Map<String, dynamic> json) =>
    _$_FollowingUser(
      uid: json['uid'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$$_FollowingUserToJson(_$_FollowingUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'email': instance.email,
    };
