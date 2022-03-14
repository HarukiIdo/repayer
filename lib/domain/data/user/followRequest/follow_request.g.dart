// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FollowRequest _$$_FollowRequestFromJson(Map<String, dynamic> json) =>
    _$_FollowRequest(
      docId: json['docId'] as String?,
      followUserEmail: json['followUserEmail'] as String,
      followUserId: json['followUserId'] as String,
      process: const StringFollowRequestProcessConverter()
          .fromJson(json['process'] as String),
    );

Map<String, dynamic> _$$_FollowRequestToJson(_$_FollowRequest instance) =>
    <String, dynamic>{
      'docId': instance.docId,
      'followUserEmail': instance.followUserEmail,
      'followUserId': instance.followUserId,
      'process':
          const StringFollowRequestProcessConverter().toJson(instance.process),
    };
