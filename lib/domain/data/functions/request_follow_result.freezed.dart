// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_follow_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestFollowResult _$RequestFollowResultFromJson(Map<String, dynamic> json) {
  return _RequestFollowResult.fromJson(json);
}

/// @nodoc
class _$RequestFollowResultTearOff {
  const _$RequestFollowResultTearOff();

  _RequestFollowResult call({String error = '', required bool result}) {
    return _RequestFollowResult(
      error: error,
      result: result,
    );
  }

  RequestFollowResult fromJson(Map<String, Object?> json) {
    return RequestFollowResult.fromJson(json);
  }
}

/// @nodoc
const $RequestFollowResult = _$RequestFollowResultTearOff();

/// @nodoc
mixin _$RequestFollowResult {
  String get error => throw _privateConstructorUsedError;
  bool get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestFollowResultCopyWith<RequestFollowResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFollowResultCopyWith<$Res> {
  factory $RequestFollowResultCopyWith(
          RequestFollowResult value, $Res Function(RequestFollowResult) then) =
      _$RequestFollowResultCopyWithImpl<$Res>;
  $Res call({String error, bool result});
}

/// @nodoc
class _$RequestFollowResultCopyWithImpl<$Res>
    implements $RequestFollowResultCopyWith<$Res> {
  _$RequestFollowResultCopyWithImpl(this._value, this._then);

  final RequestFollowResult _value;
  // ignore: unused_field
  final $Res Function(RequestFollowResult) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RequestFollowResultCopyWith<$Res>
    implements $RequestFollowResultCopyWith<$Res> {
  factory _$RequestFollowResultCopyWith(_RequestFollowResult value,
          $Res Function(_RequestFollowResult) then) =
      __$RequestFollowResultCopyWithImpl<$Res>;
  @override
  $Res call({String error, bool result});
}

/// @nodoc
class __$RequestFollowResultCopyWithImpl<$Res>
    extends _$RequestFollowResultCopyWithImpl<$Res>
    implements _$RequestFollowResultCopyWith<$Res> {
  __$RequestFollowResultCopyWithImpl(
      _RequestFollowResult _value, $Res Function(_RequestFollowResult) _then)
      : super(_value, (v) => _then(v as _RequestFollowResult));

  @override
  _RequestFollowResult get _value => super._value as _RequestFollowResult;

  @override
  $Res call({
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_RequestFollowResult(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestFollowResult
    with DiagnosticableTreeMixin
    implements _RequestFollowResult {
  _$_RequestFollowResult({this.error = '', required this.result});

  factory _$_RequestFollowResult.fromJson(Map<String, dynamic> json) =>
      _$$_RequestFollowResultFromJson(json);

  @JsonKey()
  @override
  final String error;
  @override
  final bool result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestFollowResult(error: $error, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestFollowResult'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestFollowResult &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$RequestFollowResultCopyWith<_RequestFollowResult> get copyWith =>
      __$RequestFollowResultCopyWithImpl<_RequestFollowResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestFollowResultToJson(this);
  }
}

abstract class _RequestFollowResult implements RequestFollowResult {
  factory _RequestFollowResult({String error, required bool result}) =
      _$_RequestFollowResult;

  factory _RequestFollowResult.fromJson(Map<String, dynamic> json) =
      _$_RequestFollowResult.fromJson;

  @override
  String get error;
  @override
  bool get result;
  @override
  @JsonKey(ignore: true)
  _$RequestFollowResultCopyWith<_RequestFollowResult> get copyWith =>
      throw _privateConstructorUsedError;
}
