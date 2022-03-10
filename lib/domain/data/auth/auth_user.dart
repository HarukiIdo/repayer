import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repayer/domain/service/auth_service.dart';
import 'package:repayer/domain/data/user/user.dart';

part 'auth_user.freezed.dart';

@freezed
class AuthUser with _$AuthUser {
  const factory AuthUser({
    User? user,
    @Default(AuthStatus.notSignedIn) AuthStatus authStatus,
  }) = _AuthUser;
}
