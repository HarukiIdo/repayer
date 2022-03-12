// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'following_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FollowingUser _$FollowingUserFromJson(Map<String, dynamic> json) {
  return _FollowingUser.fromJson(json);
}

/// @nodoc
class _$FollowingUserTearOff {
  const _$FollowingUserTearOff();

  _FollowingUser call(
      {String uid = '', String displayName = '', String email = ''}) {
    return _FollowingUser(
      uid: uid,
      displayName: displayName,
      email: email,
    );
  }

  FollowingUser fromJson(Map<String, Object?> json) {
    return FollowingUser.fromJson(json);
  }
}

/// @nodoc
const $FollowingUser = _$FollowingUserTearOff();

/// @nodoc
mixin _$FollowingUser {
  String get uid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowingUserCopyWith<FollowingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingUserCopyWith<$Res> {
  factory $FollowingUserCopyWith(
          FollowingUser value, $Res Function(FollowingUser) then) =
      _$FollowingUserCopyWithImpl<$Res>;
  $Res call({String uid, String displayName, String email});
}

/// @nodoc
class _$FollowingUserCopyWithImpl<$Res>
    implements $FollowingUserCopyWith<$Res> {
  _$FollowingUserCopyWithImpl(this._value, this._then);

  final FollowingUser _value;
  // ignore: unused_field
  final $Res Function(FollowingUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FollowingUserCopyWith<$Res>
    implements $FollowingUserCopyWith<$Res> {
  factory _$FollowingUserCopyWith(
          _FollowingUser value, $Res Function(_FollowingUser) then) =
      __$FollowingUserCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String displayName, String email});
}

/// @nodoc
class __$FollowingUserCopyWithImpl<$Res>
    extends _$FollowingUserCopyWithImpl<$Res>
    implements _$FollowingUserCopyWith<$Res> {
  __$FollowingUserCopyWithImpl(
      _FollowingUser _value, $Res Function(_FollowingUser) _then)
      : super(_value, (v) => _then(v as _FollowingUser));

  @override
  _FollowingUser get _value => super._value as _FollowingUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
  }) {
    return _then(_FollowingUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowingUser with DiagnosticableTreeMixin implements _FollowingUser {
  _$_FollowingUser({this.uid = '', this.displayName = '', this.email = ''});

  factory _$_FollowingUser.fromJson(Map<String, dynamic> json) =>
      _$$_FollowingUserFromJson(json);

  @JsonKey()
  @override
  final String uid;
  @JsonKey()
  @override
  final String displayName;
  @JsonKey()
  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FollowingUser(uid: $uid, displayName: $displayName, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FollowingUser'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowingUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$FollowingUserCopyWith<_FollowingUser> get copyWith =>
      __$FollowingUserCopyWithImpl<_FollowingUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowingUserToJson(this);
  }
}

abstract class _FollowingUser implements FollowingUser {
  factory _FollowingUser({String uid, String displayName, String email}) =
      _$_FollowingUser;

  factory _FollowingUser.fromJson(Map<String, dynamic> json) =
      _$_FollowingUser.fromJson;

  @override
  String get uid;
  @override
  String get displayName;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$FollowingUserCopyWith<_FollowingUser> get copyWith =>
      throw _privateConstructorUsedError;
}
