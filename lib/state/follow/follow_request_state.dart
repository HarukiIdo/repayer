import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repayer/data/datasource/user/followRequest/follow_request.dart';
import 'package:repayer/data/datasource/user/user.dart';
import 'package:repayer/domain/use_case/follow/get_follow_requests_use_case.dart';
import 'package:repayer/domain/use_case/follow/stream_follow_request_use_case.dart';
import 'package:repayer/domain/use_case/follow/get_follow_requests_use_case.dart';

class FollowRequestState extends StateNotifier<AsyncValue<FollowReqests>> {
  FollowRequestState(
    this._user,
    this._streamFollowRequestUseCase,
  ) : super(const AsyncValue.loading());

  final User _user;
  final StreamFollowRequestUseCase _streamFollowRequestUseCase;

  late StreamSubscription<List<FollowRequest>> _streamFollowRequests;

  @override
  void dispose() {
    _streamFollowRequests.cancel();
    super.dispose();
  }

  Future<void> init() async {
    _streamFollowRequests = _streamFollowRequestUseCase
        .call(StreamFollowRequestUseCaseUnit(user: _user))
        .listen((event) {
      if (mounted) {
        final followRequests = FollowReqests(
          rejectedFollowRequests: event
              .where((e) => e.process == FollowRequestProcess.rejected)
              .toList(),
          requestedFollowRequests: event
              .where((e) => e.process == FollowRequestProcess.requested)
              .toList(),
          approvedFollowRequests: event
              .where((e) => e.process == FollowRequestProcess.approved)
              .toList(),
        );
        state = AsyncValue.data(followRequests);
      }
    });
  }
}