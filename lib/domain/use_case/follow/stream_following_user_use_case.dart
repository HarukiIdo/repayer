import 'package:repayer/data/datasource/user/user.dart';
import 'package:repayer/data/repostiroy/firestore/user/following_user_repository.dart';
import 'package:repayer/domain/use_case/base_use_case.dart';
import 'package:repayer/data/model/following_user.dart';
import 'package:riverpod/riverpod.dart';

final streamFollwingUserUseCaseProvider = Provider.autoDispose((ref) {
  return StreamFollowingUserUseCase(ref.watch(followingUserRepositoryProvider));
});

class StreamFollowingUserUseCaseUnit extends Unit {
  const StreamFollowingUserUseCaseUnit(this.user);
  final User user;
}

class StreamFollowingUserUseCase extends BaseUseCase<
    StreamFollowingUserUseCaseUnit, Stream<List<FollowingUser>>> {
  StreamFollowingUserUseCase(this._followingUserRepository);

  final FollowingUserRepository _followingUserRepository;

  @override
  Stream<List<FollowingUser>> call(StreamFollowingUserUseCaseUnit params) {
    final stream = _followingUserRepository.stream(userId: params.user.uid);
    return stream;
  }
}
