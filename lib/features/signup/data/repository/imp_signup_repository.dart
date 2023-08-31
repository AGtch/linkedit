import 'package:LinkedIt/features/signup/data/repository/signup_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ImpSignupRepository implements SignupRepository {
  final FirebaseAuth firebaseAuth;

  ImpSignupRepository({required this.firebaseAuth});

  @override
  Future<UserCredential> createUserWithEmailAndPassword(
      {required String email, required String password}) {
    return firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> reloadData() async {
    await firebaseAuth.currentUser?.reload();
  }

  @override
  Future<UserCredential> signInWithEmailAndPassword(
      {required String email, required String password}) {
    return firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> signOut(FirebaseAuth firebaseAuth) async {
    await firebaseAuth.signOut();
  }
}
