import 'package:repayer/domain/data/auth/auth_user.dart';
import 'package:repayer/domain/data/functions/request_follow_result.dart';
import 'package:repayer/domain/use_case/follow/request_follow_use_case.dart';
import 'package:riverpod/riverpod.dart';
import 'package:repayer/domain/model/following_user.dart';

class FollowingUserState
    extends StateNotifier<AsyncValue<List<FollowingUser>>> {
  FollowingUserState(
    this._authUser,
    this._requestFollowUseCase,
  ) : super(const AsyncValue.loading()) {
    init();
  }

  final AuthUser _authUser;
  final RequestFollowUseCase _requestFollowUseCase;

  Future<void> init() async {
    final user = _authUser.user;
    if (user == null) {
      return;
    }

    state = const AsyncValue.loading();
  }

  Future<RequestFollowResult?> requestFollow({required String email}) async {
    final result = await _requestFollowUseCase.call(
      RequestFollowUseCaseUnit(user: _authUser.user!, email: email),
    );
    return result;
  }
}
