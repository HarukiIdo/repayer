import 'package:riverpod/riverpod.dart';
import 'package:repayer/domain/service/auth/auth_service.dart';
import 'package:repayer/domain/use_case/base_use_case.dart';

final deleteUserUseCaseProvider = Provider.autoDispose(
  (ref) => DeleteUserUseCase(ref.watch(authServiceProvider)),
);

class DeleteUserUseCaseUnit extends Unit {
  const DeleteUserUseCaseUnit();
}

class DeleteUserUseCase
    extends BaseUseCase<DeleteUserUseCaseUnit, Future<void>> {
  DeleteUserUseCase(this._authService);
  final AuthService _authService;

  @override
  Future<void> call(DeleteUserUseCaseUnit params) async {
    await _authService.deleteUser();
  }
}
