import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_follow_result.freezed.dart';
part 'request_follow_result.g.dart';

@freezed
class RequestFollowResult with _$RequestFollowResult {
  factory RequestFollowResult({
    @Default('') String error,
    required bool result,
  }) = _RequestFollowResult;

  factory RequestFollowResult.fromJson(Map<String, dynamic> json) =>
      _$RequestFollowResultFromJson(json);
}
