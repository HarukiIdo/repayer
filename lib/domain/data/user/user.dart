import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @Default('') String uid,
    @Default('') String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromDocumentSnapshot(DocumentSnapshot doc) {
    final data = doc.data() ?? <String, dynamic>{};
    final json = data as Map<String, dynamic>;
    json['uid'] = doc.id;
    return User.fromJson(json);
  }
}
