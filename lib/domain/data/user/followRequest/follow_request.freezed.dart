// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'follow_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FollowRequest _$FollowRequestFromJson(Map<String, dynamic> json) {
  return _FollowRequest.fromJson(json);
}

/// @nodoc
class _$FollowRequestTearOff {
  const _$FollowRequestTearOff();

  _FollowRequest call(
      {String? docId,
      required String followUserEmail,
      required String followUserId}) {
    return _FollowRequest(
      docId: docId,
      followUserEmail: followUserEmail,
      followUserId: followUserId,
    );
  }

  FollowRequest fromJson(Map<String, Object?> json) {
    return FollowRequest.fromJson(json);
  }
}

/// @nodoc
const $FollowRequest = _$FollowRequestTearOff();

/// @nodoc
mixin _$FollowRequest {
  String? get docId => throw _privateConstructorUsedError;
  String get followUserEmail => throw _privateConstructorUsedError;
  String get followUserId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowRequestCopyWith<FollowRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowRequestCopyWith<$Res> {
  factory $FollowRequestCopyWith(
          FollowRequest value, $Res Function(FollowRequest) then) =
      _$FollowRequestCopyWithImpl<$Res>;
  $Res call({String? docId, String followUserEmail, String followUserId});
}

/// @nodoc
class _$FollowRequestCopyWithImpl<$Res>
    implements $FollowRequestCopyWith<$Res> {
  _$FollowRequestCopyWithImpl(this._value, this._then);

  final FollowRequest _value;
  // ignore: unused_field
  final $Res Function(FollowRequest) _then;

  @override
  $Res call({
    Object? docId = freezed,
    Object? followUserEmail = freezed,
    Object? followUserId = freezed,
  }) {
    return _then(_value.copyWith(
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
      followUserEmail: followUserEmail == freezed
          ? _value.followUserEmail
          : followUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      followUserId: followUserId == freezed
          ? _value.followUserId
          : followUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FollowRequestCopyWith<$Res>
    implements $FollowRequestCopyWith<$Res> {
  factory _$FollowRequestCopyWith(
          _FollowRequest value, $Res Function(_FollowRequest) then) =
      __$FollowRequestCopyWithImpl<$Res>;
  @override
  $Res call({String? docId, String followUserEmail, String followUserId});
}

/// @nodoc
class __$FollowRequestCopyWithImpl<$Res>
    extends _$FollowRequestCopyWithImpl<$Res>
    implements _$FollowRequestCopyWith<$Res> {
  __$FollowRequestCopyWithImpl(
      _FollowRequest _value, $Res Function(_FollowRequest) _then)
      : super(_value, (v) => _then(v as _FollowRequest));

  @override
  _FollowRequest get _value => super._value as _FollowRequest;

  @override
  $Res call({
    Object? docId = freezed,
    Object? followUserEmail = freezed,
    Object? followUserId = freezed,
  }) {
    return _then(_FollowRequest(
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
      followUserEmail: followUserEmail == freezed
          ? _value.followUserEmail
          : followUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      followUserId: followUserId == freezed
          ? _value.followUserId
          : followUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowRequest with DiagnosticableTreeMixin implements _FollowRequest {
  _$_FollowRequest(
      {this.docId, required this.followUserEmail, required this.followUserId});

  factory _$_FollowRequest.fromJson(Map<String, dynamic> json) =>
      _$$_FollowRequestFromJson(json);

  @override
  final String? docId;
  @override
  final String followUserEmail;
  @override
  final String followUserId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FollowRequest(docId: $docId, followUserEmail: $followUserEmail, followUserId: $followUserId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FollowRequest'))
      ..add(DiagnosticsProperty('docId', docId))
      ..add(DiagnosticsProperty('followUserEmail', followUserEmail))
      ..add(DiagnosticsProperty('followUserId', followUserId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowRequest &&
            const DeepCollectionEquality().equals(other.docId, docId) &&
            const DeepCollectionEquality()
                .equals(other.followUserEmail, followUserEmail) &&
            const DeepCollectionEquality()
                .equals(other.followUserId, followUserId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(docId),
      const DeepCollectionEquality().hash(followUserEmail),
      const DeepCollectionEquality().hash(followUserId));

  @JsonKey(ignore: true)
  @override
  _$FollowRequestCopyWith<_FollowRequest> get copyWith =>
      __$FollowRequestCopyWithImpl<_FollowRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowRequestToJson(this);
  }
}

abstract class _FollowRequest implements FollowRequest {
  factory _FollowRequest(
      {String? docId,
      required String followUserEmail,
      required String followUserId}) = _$_FollowRequest;

  factory _FollowRequest.fromJson(Map<String, dynamic> json) =
      _$_FollowRequest.fromJson;

  @override
  String? get docId;
  @override
  String get followUserEmail;
  @override
  String get followUserId;
  @override
  @JsonKey(ignore: true)
  _$FollowRequestCopyWith<_FollowRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
