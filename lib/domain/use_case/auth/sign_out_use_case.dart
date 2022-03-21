import 'package:repayer/domain/data/auth/auth_user.dart';
import 'package:repayer/domain/service/auth/auth_service.dart';
import 'package:repayer/domain/use_case/auth/sign_in_use_case.dart';
import 'package:repayer/domain/use_case/base_use_case.dart';
import 'package:riverpod/riverpod.dart';

final signOutUseCaseProvider = Provider.autoDispose((ref) => SignOutUseCase(
      ref.watch(authServiceProvider),
    ));

class SignOutUseCaseUnit extends Unit {
  const SignOutUseCaseUnit();
}

class SignOutUseCase implements BaseUseCase<SignOutUseCaseUnit, void> {
  const SignOutUseCase(this._authService);

  final AuthService _authService;
  @override
  Future<void> call(SignOutUseCaseUnit params) async {
    await _authService.signOut();
  }
}
