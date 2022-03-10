// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthDataTearOff {
  const _$AuthDataTearOff();

  _AuthData call(
      {String? userId, AuthStatus authStatus = AuthStatus.notSignedIn}) {
    return _AuthData(
      userId: userId,
      authStatus: authStatus,
    );
  }
}

/// @nodoc
const $AuthData = _$AuthDataTearOff();

/// @nodoc
mixin _$AuthData {
  String? get userId => throw _privateConstructorUsedError;
  AuthStatus get authStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthDataCopyWith<AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataCopyWith<$Res> {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) then) =
      _$AuthDataCopyWithImpl<$Res>;
  $Res call({String? userId, AuthStatus authStatus});
}

/// @nodoc
class _$AuthDataCopyWithImpl<$Res> implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._value, this._then);

  final AuthData _value;
  // ignore: unused_field
  final $Res Function(AuthData) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? authStatus = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc
abstract class _$AuthDataCopyWith<$Res> implements $AuthDataCopyWith<$Res> {
  factory _$AuthDataCopyWith(_AuthData value, $Res Function(_AuthData) then) =
      __$AuthDataCopyWithImpl<$Res>;
  @override
  $Res call({String? userId, AuthStatus authStatus});
}

/// @nodoc
class __$AuthDataCopyWithImpl<$Res> extends _$AuthDataCopyWithImpl<$Res>
    implements _$AuthDataCopyWith<$Res> {
  __$AuthDataCopyWithImpl(_AuthData _value, $Res Function(_AuthData) _then)
      : super(_value, (v) => _then(v as _AuthData));

  @override
  _AuthData get _value => super._value as _AuthData;

  @override
  $Res call({
    Object? userId = freezed,
    Object? authStatus = freezed,
  }) {
    return _then(_AuthData(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$_AuthData with DiagnosticableTreeMixin implements _AuthData {
  const _$_AuthData({this.userId, this.authStatus = AuthStatus.notSignedIn});

  @override
  final String? userId;
  @JsonKey()
  @override
  final AuthStatus authStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthData(userId: $userId, authStatus: $authStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthData'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('authStatus', authStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthData &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.authStatus, authStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(authStatus));

  @JsonKey(ignore: true)
  @override
  _$AuthDataCopyWith<_AuthData> get copyWith =>
      __$AuthDataCopyWithImpl<_AuthData>(this, _$identity);
}

abstract class _AuthData implements AuthData {
  const factory _AuthData({String? userId, AuthStatus authStatus}) =
      _$_AuthData;

  @override
  String? get userId;
  @override
  AuthStatus get authStatus;
  @override
  @JsonKey(ignore: true)
  _$AuthDataCopyWith<_AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}
