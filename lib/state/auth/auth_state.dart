import 'package:async/async.dart';
import 'package:repayer/domain/data/auth/auth_user.dart';
import 'package:repayer/domain/service/auth/auth_service.dart';
import 'package:repayer/domain/use_case/auth/sign_in_use_case.dart';
import 'package:riverpod/riverpod.dart';

final authStateProvider =
    StateNotifierProvider.autoDispose<AuthState, AuthUser>(
  (ref) => AuthState(
    ref.watch(signInUseCaseProvider),
  ),
);

class AuthState extends StateNotifier<AuthUser> {
  AuthState(this._signInUseCase)
      : super(const AuthUser(user: null, authStatus: AuthStatus.loading));
  final SignInUseCase _signInUseCase;

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    final result = await Result.capture(
      _signInUseCase.call(
        SignInUseCaseUnit(
          email,
          password,
        ),
      ),
    );
    if (result.isValue) {
      state = AuthUser(
        user: result.asValue!.value,
        authStatus: AuthStatus.signedIn,
      );
    }
  }
}
