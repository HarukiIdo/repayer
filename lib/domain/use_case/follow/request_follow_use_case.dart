import 'package:repayer/domain/data/functions/request_follow_result.dart';
import 'package:repayer/domain/data/user/user.dart';
import 'package:repayer/domain/repostiroy/functions/function_repostory.dart';
import 'package:repayer/domain/use_case/base_use_case.dart';
import 'package:riverpod/riverpod.dart';

final requestFollowUseCaseProvider = Provider.autoDispose(
  (ref) => RequestFollowUseCase(
    ref.watch(functionRepositoryProvider),
  ),
);

class RequestFollowUseCaseUnit extends Unit {
  const RequestFollowUseCaseUnit({
    required this.user,
    required this.email,
  });
  final User user;
  final String email;
}

class RequestFollowUseCase
    extends BaseUseCase<RequestFollowUseCaseUnit, Future<RequestFollowResult>> {
  RequestFollowUseCase(
    this._functionRepository,
  );
  final FunctionRepository _functionRepository;

  @override
  Future<RequestFollowResult> call(RequestFollowUseCaseUnit params) async {
    final result = await _functionRepository.requestFollow(
        user: params.user, email: params.email);
    return result;
  }
}
