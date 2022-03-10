import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repayer/domain/data/user/user.dart';
import 'package:repayer/domain/service/auth_service.dart';
import 'package:repayer/domain/repostiroy/user_repository.dart';
import 'package:repayer/use_case/base_use_case.dart';

final signInUseCaseProvider = Provider.autoDispose(
  (ref) => SignInUseCase(
    ref.watch(authServiceProvider),
    ref.watch(userRepositoryProvider),
  ),
);

class SignInUseCaseUnit extends Unit {
  const SignInUseCaseUnit(this.email, this.password);
  final String email;
  final String password;
}

class SignInUseCase extends BaseUseCase<SignInUseCaseUnit, Future<User>> {
  SignInUseCase(this._authService, this._userRepository);

  final AuthService _authService;
  final UserRepository _userRepository;

  @override
  Future<User> call(SignInUseCaseUnit params) async {
    final userData = await _authService.signIn(
        email: params.email, password: params.password);
    final user = await _userRepository.fetch(userId: userData.userId!);
    return user;
  }
}
