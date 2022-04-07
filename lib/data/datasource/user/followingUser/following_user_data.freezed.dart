// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'following_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FollowingUserData _$FollowingUserDataFromJson(Map<String, dynamic> json) {
  return _FollowingUserData.fromJson(json);
}

/// @nodoc
class _$FollowingUserDataTearOff {
  const _$FollowingUserDataTearOff();

  _FollowingUserData call(
      {String uid = '', String displayName = '', String email = ''}) {
    return _FollowingUserData(
      uid: uid,
      displayName: displayName,
      email: email,
    );
  }

  FollowingUserData fromJson(Map<String, Object?> json) {
    return FollowingUserData.fromJson(json);
  }
}

/// @nodoc
const $FollowingUserData = _$FollowingUserDataTearOff();

/// @nodoc
mixin _$FollowingUserData {
  String get uid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowingUserDataCopyWith<FollowingUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingUserDataCopyWith<$Res> {
  factory $FollowingUserDataCopyWith(
          FollowingUserData value, $Res Function(FollowingUserData) then) =
      _$FollowingUserDataCopyWithImpl<$Res>;
  $Res call({String uid, String displayName, String email});
}

/// @nodoc
class _$FollowingUserDataCopyWithImpl<$Res>
    implements $FollowingUserDataCopyWith<$Res> {
  _$FollowingUserDataCopyWithImpl(this._value, this._then);

  final FollowingUserData _value;
  // ignore: unused_field
  final $Res Function(FollowingUserData) _then;

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
abstract class _$FollowingUserDataCopyWith<$Res>
    implements $FollowingUserDataCopyWith<$Res> {
  factory _$FollowingUserDataCopyWith(
          _FollowingUserData value, $Res Function(_FollowingUserData) then) =
      __$FollowingUserDataCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String displayName, String email});
}

/// @nodoc
class __$FollowingUserDataCopyWithImpl<$Res>
    extends _$FollowingUserDataCopyWithImpl<$Res>
    implements _$FollowingUserDataCopyWith<$Res> {
  __$FollowingUserDataCopyWithImpl(
      _FollowingUserData _value, $Res Function(_FollowingUserData) _then)
      : super(_value, (v) => _then(v as _FollowingUserData));

  @override
  _FollowingUserData get _value => super._value as _FollowingUserData;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
  }) {
    return _then(_FollowingUserData(
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
class _$_FollowingUserData extends _FollowingUserData
    with DiagnosticableTreeMixin {
  _$_FollowingUserData({this.uid = '', this.displayName = '', this.email = ''})
      : super._();

  factory _$_FollowingUserData.fromJson(Map<String, dynamic> json) =>
      _$$_FollowingUserDataFromJson(json);

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
    return 'FollowingUserData(uid: $uid, displayName: $displayName, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FollowingUserData'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowingUserData &&
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
  _$FollowingUserDataCopyWith<_FollowingUserData> get copyWith =>
      __$FollowingUserDataCopyWithImpl<_FollowingUserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowingUserDataToJson(this);
  }
}

abstract class _FollowingUserData extends FollowingUserData {
  factory _FollowingUserData({String uid, String displayName, String email}) =
      _$_FollowingUserData;
  _FollowingUserData._() : super._();

  factory _FollowingUserData.fromJson(Map<String, dynamic> json) =
      _$_FollowingUserData.fromJson;

  @override
  String get uid;
  @override
  String get displayName;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$FollowingUserDataCopyWith<_FollowingUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
