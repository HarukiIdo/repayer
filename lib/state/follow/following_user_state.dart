import 'dart:async';

import 'package:repayer/data/datasource/auth/auth_user.dart';
import 'package:repayer/data/datasource/functions/request_follow_result.dart';
import 'package:repayer/domain/use_case/follow/request_follow_use_case.dart';
import 'package:repayer/domain/use_case/follow/stream_follow_request_use_case.dart';
import 'package:repayer/domain/use_case/follow/stream_following_user_use_case.dart';
import 'package:riverpod/riverpod.dart';
import 'package:repayer/data/model/following_user.dart';
import 'package:repayer/state/auth/auth_state.dart';
import 'package:repayer/data/model/following_user.dart';

final followingUserStateProvider = StateNotifierProvider.autoDispose<
    FollowingUserState, AsyncValue<List<FollowingUser>>>(
  (ref) {
    return FollowingUserState(
      ref.watch(authStateProvider),
      ref.watch(requestFollowUseCaseProvider),
      ref.watch(streamFollwingUserUseCaseProvider),
    );
  },
);

class FollowingUserState
    extends StateNotifier<AsyncValue<List<FollowingUser>>> {
  FollowingUserState(
    this._authUser,
    this._requestFollowUseCase,
    this._streamFollowingUserUseCase,
  ) : super(const AsyncValue.loading()) {
    init();
  }

  final AuthUser _authUser;
  final RequestFollowUseCase _requestFollowUseCase;
  final StreamFollowingUserUseCase _streamFollowingUserUseCase;
  late StreamSubscription<List<FollowingUser>> _streamFollwingUser;

  Future<void> init() async {
    final user = _authUser.user;
    if (user == null) {
      return;
    }

    state = const AsyncValue.loading();
    _streamFollwingUser = _streamFollowingUserUseCase
        .call(StreamFollowingUserUseCaseUnit(user))
        .listen((event) {
      state = AsyncValue.data(event);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _streamFollwingUser.cancel();
  }

  Future<RequestFollowResult?> requestFollow({required String email}) async {
    final result = await _requestFollowUseCase.call(
      RequestFollowUseCaseUnit(user: _authUser.user!, email: email),
    );
    return result;
  }
}
