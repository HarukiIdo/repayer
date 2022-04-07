// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthUserTearOff {
  const _$AuthUserTearOff();

  _AuthUser call({User? user, AuthStatus authStatus = AuthStatus.notSignedIn}) {
    return _AuthUser(
      user: user,
      authStatus: authStatus,
    );
  }
}

/// @nodoc
const $AuthUser = _$AuthUserTearOff();

/// @nodoc
mixin _$AuthUser {
  User? get user => throw _privateConstructorUsedError;
  AuthStatus get authStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUserCopyWith<AuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserCopyWith<$Res> {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) then) =
      _$AuthUserCopyWithImpl<$Res>;
  $Res call({User? user, AuthStatus authStatus});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthUserCopyWithImpl<$Res> implements $AuthUserCopyWith<$Res> {
  _$AuthUserCopyWithImpl(this._value, this._then);

  final AuthUser _value;
  // ignore: unused_field
  final $Res Function(AuthUser) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? authStatus = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthUserCopyWith<$Res> implements $AuthUserCopyWith<$Res> {
  factory _$AuthUserCopyWith(_AuthUser value, $Res Function(_AuthUser) then) =
      __$AuthUserCopyWithImpl<$Res>;
  @override
  $Res call({User? user, AuthStatus authStatus});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$AuthUserCopyWithImpl<$Res> extends _$AuthUserCopyWithImpl<$Res>
    implements _$AuthUserCopyWith<$Res> {
  __$AuthUserCopyWithImpl(_AuthUser _value, $Res Function(_AuthUser) _then)
      : super(_value, (v) => _then(v as _AuthUser));

  @override
  _AuthUser get _value => super._value as _AuthUser;

  @override
  $Res call({
    Object? user = freezed,
    Object? authStatus = freezed,
  }) {
    return _then(_AuthUser(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$_AuthUser implements _AuthUser {
  const _$_AuthUser({this.user, this.authStatus = AuthStatus.notSignedIn});

  @override
  final User? user;
  @JsonKey()
  @override
  final AuthStatus authStatus;

  @override
  String toString() {
    return 'AuthUser(user: $user, authStatus: $authStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthUser &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.authStatus, authStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(authStatus));

  @JsonKey(ignore: true)
  @override
  _$AuthUserCopyWith<_AuthUser> get copyWith =>
      __$AuthUserCopyWithImpl<_AuthUser>(this, _$identity);
}

abstract class _AuthUser implements AuthUser {
  const factory _AuthUser({User? user, AuthStatus authStatus}) = _$_AuthUser;

  @override
  User? get user;
  @override
  AuthStatus get authStatus;
  @override
  @JsonKey(ignore: true)
  _$AuthUserCopyWith<_AuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}
