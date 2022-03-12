import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:riverpod/riverpod.dart';
import 'package:repayer/domain/data/user/followRequest/follow_request.dart';

final followRequestRepositoryProvider = Provider.autoDispose(
  (ref) => FollowRequestRepository(
    FirebaseFirestore.instance,
  ),
);

class FollowRequestRepository {
  const FollowRequestRepository(this._firestore);
  final FirebaseFirestore _firestore;

  CollectionReference<FollowRequest> _collection({required String userId}) =>
      _firestore
          .collection('users')
          .doc(userId)
          .collection('followRequests')
          .withConverter(
            fromFirestore: (doc, _) => FollowRequest.fromDecumnetSnapShot(doc),
            toFirestore: (model, _) => model.toJson(),
          );

  DocumentReference<FollowRequest> _doc({
    required String userId,
    required String docId,
  }) =>
      _collection(userId: userId).doc(docId).withConverter(
            fromFirestore: (doc, options) =>
                FollowRequest.fromDecumnetSnapShot(doc),
            toFirestore: (obj, option) => obj.toJson()..remove('docId'),
          );

  Future<List<FollowRequest>> fetch({required String userId}) async {
    final snapshot = await _collection(userId: userId).get();
    final docs = snapshot.docs;

    return docs.map((e) => e.data()).toList();
  }
}
