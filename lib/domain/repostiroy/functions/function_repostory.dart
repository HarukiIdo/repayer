import 'package:cloud_functions/cloud_functions.dart';
import 'package:repayer/domain/data/functions/request_follow_result.dart';
import 'package:repayer/domain/data/user/user.dart';
import 'package:riverpod/riverpod.dart';

final functionRepositoryProvider = Provider.autoDispose(
  (ref) => FunctionRepository(
    FirebaseFunctions.instanceFor(region: 'asia-northeast1'),
  ),
);

class FunctionRepository {
  const FunctionRepository(this._firebaseFunctions);
  final FirebaseFunctions _firebaseFunctions;

  Future<RequestFollowResult> requestFollow({
    required User user,
    required String email,
  }) async {
    final callable =
        _firebaseFunctions.httpsCallable('checkInviteRequestEmail');
    final result = await callable.call<Map<String, dynamic>>(<String, dynamic>{
      'requestUserId': user.uid,
      'email': email,
    });
    return RequestFollowResult.fromJson(result.data);
  }
}
