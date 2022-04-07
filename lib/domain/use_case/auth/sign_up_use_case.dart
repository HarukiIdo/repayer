import 'package:repayer/data/datasource/auth/auth_user.dart';
import 'package:repayer/data/service/auth/auth_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:repayer/domain/use_case/base_use_case.dart';

final signUpUseCaseProvider = Provider.autoDispose(
  (ref) => SignUpUseCase(ref.watch(authServiceProvider)),
);

class SignUpUseCaseUnit extends Unit {
  SignUpUseCaseUnit(this.email, this.password);
  final String email;
  final String password;
}

class SignUpUseCase extends BaseUseCase<SignUpUseCaseUnit, Future<AuthUser>> {
  SignUpUseCase(this._authService);
  final AuthService _authService;

  @override
  Future<AuthUser> call(SignUpUseCaseUnit params) async {
    await _authService.signUp(
      email: params.email,
      password: params.password,
    );

    return const AuthUser(
      user: null,
      authStatus: AuthStatus.notSignedIn,
    );
  }
}
