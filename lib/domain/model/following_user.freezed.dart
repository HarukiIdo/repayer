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

/// @nodoc
class _$FollowingUserTearOff {
  const _$FollowingUserTearOff();

  _FollowingUser call(
      {required String uid,
      required String displyaName,
      required String email,
      required String createdAt}) {
    return _FollowingUser(
      uid: uid,
      displyaName: displyaName,
      email: email,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
const $FollowingUser = _$FollowingUserTearOff();

/// @nodoc
mixin _$FollowingUser {
  String get uid => throw _privateConstructorUsedError;
  String get displyaName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowingUserCopyWith<FollowingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingUserCopyWith<$Res> {
  factory $FollowingUserCopyWith(
          FollowingUser value, $Res Function(FollowingUser) then) =
      _$FollowingUserCopyWithImpl<$Res>;
  $Res call({String uid, String displyaName, String email, String createdAt});
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
    Object? displyaName = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displyaName: displyaName == freezed
          ? _value.displyaName
          : displyaName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
  $Res call({String uid, String displyaName, String email, String createdAt});
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
    Object? displyaName = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_FollowingUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displyaName: displyaName == freezed
          ? _value.displyaName
          : displyaName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FollowingUser implements _FollowingUser {
  _$_FollowingUser(
      {required this.uid,
      required this.displyaName,
      required this.email,
      required this.createdAt});

  @override
  final String uid;
  @override
  final String displyaName;
  @override
  final String email;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'FollowingUser(uid: $uid, displyaName: $displyaName, email: $email, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowingUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.displyaName, displyaName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(displyaName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$FollowingUserCopyWith<_FollowingUser> get copyWith =>
      __$FollowingUserCopyWithImpl<_FollowingUser>(this, _$identity);
}

abstract class _FollowingUser implements FollowingUser {
  factory _FollowingUser(
      {required String uid,
      required String displyaName,
      required String email,
      required String createdAt}) = _$_FollowingUser;

  @override
  String get uid;
  @override
  String get displyaName;
  @override
  String get email;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$FollowingUserCopyWith<_FollowingUser> get copyWith =>
      throw _privateConstructorUsedError;
}
