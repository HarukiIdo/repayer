import 'package:repayer/domain/data/user/user.dart';
import 'package:repayer/domain/repostiroy/firestore/user_repository.dart';
import 'package:repayer/domain/service/auth/auth_service.dart';
import 'package:repayer/domain/use_case/base_use_case.dart';
import 'package:repayer/domain/data/auth/auth_user.dart';
import 'package:riverpod/riverpod.dart';

final getAuthUserUseCaseProvider =
    Provider.autoDispose((ref) => GetAuthUserUseCase(
          ref.watch(authServiceProvider),
          ref.watch(userRepositoryProvider),
        ));

class GetAuthUserUseCaseUnit extends Unit {}

class GetAuthUserUseCase
    extends BaseUseCase<GetAuthUserUseCaseUnit, Future<AuthUser>> {
  GetAuthUserUseCase(this._authService, this._userRepository);
  final AuthService _authService;
  final UserRepository _userRepository;

  @override
  Future<AuthUser> call(GetAuthUserUseCaseUnit params) async {
    late User? user;
    late AuthStatus authStatus;
    final isLoggedIn = _authService.isLoggedIn();

    if (isLoggedIn) {
      final userId = _authService.fetchUserId();
      user = await _userRepository.fetch(userId: userId);
      authStatus = AuthStatus.signedIn;
    }
    authStatus = AuthStatus.notSignedIn;
    return AuthUser(
      user: user,
      authStatus: authStatus,
    );
  }
}
