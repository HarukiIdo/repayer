import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:repayer/data/datasource/user/followingUser/following_user_data.dart';
import 'package:riverpod/riverpod.dart';
import 'package:repayer/data/model/following_user.dart';

final followingUserRepositoryProvider = Provider.autoDispose((ref) {
  return FollowingUserRepository(FirebaseFirestore.instance);
});

class FollowingUserRepository {
  const FollowingUserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<FollowingUserData> _collection(
          {required String userId}) =>
      _firestore
          .collection('users')
          .doc(userId)
          .collection('followingUser')
          .withConverter(
            fromFirestore: (doc, _) =>
                FollowingUserData.fromDocumentSnapShot(doc),
            toFirestore: (model, _) => model.toJson(),
          );

  Future<List<FollowingUser>> fetch({
    required String userId,
  }) async {
    final snapshot = await _collection(userId: userId).get();
    final docs = snapshot.docs;

    return docs.map((e) => e.data().toFollowingUser()).toList();
  }

  Stream<List<FollowingUser>> stream({required String userId}) {
    return _collection(userId: userId).snapshots().asyncMap(
        (e) => e.docs.map((e) => e.data().toFollowingUser()).toList());
  }
}
