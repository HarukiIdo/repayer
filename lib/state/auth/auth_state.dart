import 'package:async/async.dart';
import 'package:repayer/data/datasource/auth/auth_user.dart';
import 'package:repayer/data/service/auth/auth_service.dart';
import 'package:repayer/domain/use_case/auth/delete_user_use_case.dart';
import 'package:repayer/domain/use_case/auth/get_auth_user_use_case.dart';
import 'package:repayer/domain/use_case/auth/sign_in_use_case.dart';
import 'package:repayer/domain/use_case/auth/sign_out_use_case.dart';
import 'package:repayer/domain/use_case/auth/sign_up_use_case.dart';
import 'package:riverpod/riverpod.dart';

final authStateProvider =
    StateNotifierProvider.autoDispose<AuthState, AuthUser>(
  (ref) => AuthState(
    ref.watch(getAuthUserUseCaseProvider),
    ref.watch(signInUseCaseProvider),
    ref.watch(signUpUseCaseProvider),
    ref.watch(signOutUseCaseProvider),
    ref.watch(deleteUserUseCaseProvider),
  ),
);

class AuthState extends StateNotifier<AuthUser> {
  AuthState(this._getAuthUserUseCase, this._signInUseCase, this._signUpUseCase,
      this._signoutUseCase, this._deleteUserUseCase)
      : super(const AuthUser(user: null, authStatus: AuthStatus.loading));

  final GetAuthUserUseCase _getAuthUserUseCase;
  final SignInUseCase _signInUseCase;
  final SignUpUseCase _signUpUseCase;
  final SignOutUseCase _signoutUseCase;
  final DeleteUserUseCase _deleteUserUseCase;

  Future<void> _init() async {
    final authUserResult = await Result.capture(
        _getAuthUserUseCase.call(GetAuthUserUseCaseUnit()));

    if (authUserResult.isValue) {
      state = authUserResult.asValue!.value;
    }
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    final result = await Result.capture(
        _signUpUseCase.call(SignUpUseCaseUnit(email, password)));

    if (result.isError) {
      print('登録成功！');
    }
  }

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

    if (result.isError) {
      print('ログイン成功！');
    }
    if (result.isValue) {
      state = AuthUser(
        user: result.asValue!.value,
        authStatus: AuthStatus.signedIn,
      );
    }
  }

  Future<void> signOut() async {
    await _signoutUseCase.call(const SignOutUseCaseUnit());
  }

  Future<void> deleteUser() async {
    await _deleteUserUseCase.call(const DeleteUserUseCaseUnit());
  }
}
