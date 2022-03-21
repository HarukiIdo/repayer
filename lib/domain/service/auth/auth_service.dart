import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:repayer/domain/data/user/user.dart';

part 'auth_service.freezed.dart';

final authServiceProvider =
    Provider.autoDispose((ref) => AuthService(auth.FirebaseAuth.instance));

@freezed
class AuthData with _$AuthData {
  const factory AuthData({
    String? userId,
    @Default(AuthStatus.notSignedIn) AuthStatus authStatus,
  }) = _AuthData;
}

enum AuthStatus {
  loading,
  notSignedIn,
  signedIn,
}

class AuthService {
  const AuthService(this._auth);
  final auth.FirebaseAuth _auth;

  bool isLoggedIn() => _auth.currentUser != null;

  String fetchUserId() {
    final currentUser = _auth.currentUser;
    return currentUser!.uid;
  }

  Future<AuthData> signUp({
    required String email,
    required String password,
  }) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final authData = AuthData(
      userId: userCredential.user?.uid,
      authStatus: AuthStatus.signedIn,
    );
    return authData;
  }

  Future<AuthData> signIn({
    required String email,
    required String password,
  }) async {
    final userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = userCredential.user;
    if (user == null) {
      throw Exception('メールアドレス/パスワードが違います');
    }
    return AuthData(
      userId: user.uid,
      authStatus: AuthStatus.signedIn,
    );
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> deleteUser() async {
    await _auth.currentUser!.delete();
  }
}
