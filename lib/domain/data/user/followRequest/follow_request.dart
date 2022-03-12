import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'follow_request.freezed.dart';
part 'follow_request.g.dart';

@freezed
class FollowRequest with _$FollowRequest {
  factory FollowRequest({
    String? docId,
    required String followUserEmail,
    required String followUserId,
  }) = _FollowRequest;

  factory FollowRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowRequestFromJson(json);

  factory FollowRequest.fromDecumnetSnapShot(DocumentSnapshot doc) {
    final data = doc.data() ?? <String, dynamic>{};
    final json = data as Map<String, dynamic>;
    json['docId'] = doc.id;
    return FollowRequest.fromJson(json);
  }
}
