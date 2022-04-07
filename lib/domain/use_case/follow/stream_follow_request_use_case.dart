import 'package:repayer/data/datasource/user/followRequest/follow_request.dart';
import 'package:repayer/data/datasource/user/user.dart';
import 'package:repayer/data/repostiroy/firestore/user/follow_request_repository.dart';
import 'package:repayer/domain/use_case/base_use_case.dart';
import 'package:riverpod/riverpod.dart';

final streamFollowRequestProvider = Provider.autoDispose(
  (ref) => StreamFollowRequestUseCase(
    ref.watch(followRequestRepositoryProvider),
  ),
);

class StreamFollowRequestUseCaseUnit extends Unit {
  const StreamFollowRequestUseCaseUnit({required this.user});
  final User user;
}

class StreamFollowRequestUseCase extends BaseUseCase<
    StreamFollowRequestUseCaseUnit, Stream<List<FollowRequest>>> {
  StreamFollowRequestUseCase(this._followRequestRepository);

  final FollowRequestRepository _followRequestRepository;

  @override
  Stream<List<FollowRequest>> call(StreamFollowRequestUseCaseUnit params) {
    final stream = _followRequestRepository.stream(userId: params.user.uid);

    return stream;
  }
}
