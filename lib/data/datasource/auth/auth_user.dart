import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repayer/data/service/auth/auth_service.dart';
import 'package:repayer/data/datasource/user/user.dart';

part 'auth_user.freezed.dart';

@freezed
class AuthUser with _$AuthUser {
  const factory AuthUser({
    User? user,
    @Default(AuthStatus.notSignedIn) AuthStatus authStatus,
  }) = _AuthUser;
}
