import 'package:firebase_auth/firebase_auth.dart';

abstract class SignupRepository {
  Future<UserCredential> createUserWithEmailAndPassword(
      {required String email, required String password});

  Future<UserCredential> signInWithEmailAndPassword(
      {required String email, required String password});

  Future<void> signOut(FirebaseAuth firebaseAuth);

  Future<void> reloadData();
}
