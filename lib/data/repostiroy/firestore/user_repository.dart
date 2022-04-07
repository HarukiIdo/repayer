import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:repayer/data/datasource/user/user.dart';
import 'package:riverpod/riverpod.dart';

final userRepositoryProvider = Provider.autoDispose(
  (ref) => UserRepository(FirebaseFirestore.instance),
);

class UserRepository {
  const UserRepository(this._firebaseFirestore);
  final FirebaseFirestore _firebaseFirestore;

  CollectionReference get _collection => _firebaseFirestore.collection('user');

  DocumentReference<User> _doc({required String userId}) =>
      _collection.doc(userId).withConverter(
            fromFirestore: (doc, option) => User.fromDocumentSnapshot(doc),
            toFirestore: (user, option) => user.toJson(),
          );

  Future<User> fetch({required String userId}) async {
    final doc = await _doc(userId: userId).get();
    if (!doc.exists) {
      throw Exception('ユーザーデータが存在しません');
    }
    return doc.data()!;
  }
}
