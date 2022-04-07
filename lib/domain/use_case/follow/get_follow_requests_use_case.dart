import 'package:repayer/data/datasource/user/followRequest/follow_request.dart';
import 'package:repayer/domain/use_case/base_use_case.dart';

class FollowReqests {
  const FollowReqests({
    required this.rejectedFollowRequests,
    required this.requestedFollowRequests,
    required this.approvedFollowRequests,
  });

  final List<FollowRequest> rejectedFollowRequests;
  final List<FollowRequest> requestedFollowRequests;
  final List<FollowRequest> approvedFollowRequests;

  bool get isEmpty =>
      rejectedFollowRequests.isEmpty &&
      requestedFollowRequests.isEmpty &&
      approvedFollowRequests.isEmpty;
}

class GetFollowRequestUseCaseUnit extends Unit {
  const GetFollowRequestUseCaseUnit({required this.userId});
  final String userId;
}
