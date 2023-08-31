// import 'package:firebase_auth/firebase_auth.dart';
//
// class PhoneVerificationDataSource {
//   final FirebaseAuth _firebaseAuth;
//
//   const PhoneVerificationDataSource(this._firebaseAuth);
//
//   Future<void> verifyPhoneNumber(String phoneNumber) async {
//     try {
//       await _firebaseAuth.verifyPhoneNumber(
//         phoneNumber: phoneNumber,
//         verificationCompleted: signIn,
//         timeout: const Duration(seconds: 15),
//         verificationFailed: verificationFailed,
//         codeSent: codeSent,
//         codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
//       );
//     } catch (e) {
//       print(e.toString());
//     }
//   }
//
//   Future<void> submitOTP(String otpCode, String verificationId) async {
//     try {
//       final authCredential = PhoneAuthProvider.credential(
//         verificationId: verificationId,
//         smsCode: otpCode,
//       );
//       await _firebaseAuth.signInWithCredential(authCredential);
//     } catch (e) {
//       print(e.toString());
//     }
//   }
//
//   Future<void> signIn(PhoneAuthCredential credential) async {
//     try {
//       await _firebaseAuth.signInWithCredential(credential);
//     } catch (e) {
//       print(e.toString());
//     }
//   }
//
//   void codeSent(String verificationId, int? forceResendingToken) {
//     print('Verification code sent to $verificationId');
//   }
//
//   void codeAutoRetrievalTimeout(String verificationId) {
//     print('Verification code auto retrieval timed out for $verificationId');
//   }
//
//   void verificationFailed(FirebaseAuthException error) {
//     print('Phone verification failed with error: ${error.message}');
//   }
// }
