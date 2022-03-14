import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enum_to_string/enum_to_string.dart';

part 'follow_request.freezed.dart';
part 'follow_request.g.dart';

enum FollowRequestProcess {
  requested,
  approved,
  rejected,
  unfollow,
}

@freezed
class FollowRequest with _$FollowRequest {
  factory FollowRequest({
    String? docId,
    required String followUserEmail,
    required String followUserId,
    @StringFollowRequestProcessConverter()
        required FollowRequestProcess process,
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

class StringFollowRequestProcessConverter
    implements JsonConverter<FollowRequestProcess, String> {
  const StringFollowRequestProcessConverter();

  @override
  FollowRequestProcess fromJson(String str) {
    final type = EnumToString.fromString(
      FollowRequestProcess.values,
      str,
    );
    return type!;
  }

  @override
  String toJson(FollowRequestProcess section) {
    final str = EnumToString.convertToString(section);
    return str;
  }
}
