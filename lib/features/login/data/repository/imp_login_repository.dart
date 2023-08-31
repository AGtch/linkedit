import 'package:firebase_auth/firebase_auth.dart';

import 'login_repository.dart';

class ImpLoginRepository implements LoginRepository {
  final FirebaseAuth _firebaseAuth;

  ImpLoginRepository(this._firebaseAuth);

  late UserCredential userCredential;

  @override
  Future<UserCredential> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return userCredential;
  }
}
