import 'package:LinkedIt/features/login/presentation/cubits/auth_cubit/phone_verification_state.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PhoneVerificationCubit extends Cubit<PhoneVerificationState> {
  PhoneVerificationCubit({required this.firebaseAuth})
      : super(const PhoneVerificationInitialState());

  final FirebaseAuth firebaseAuth;
  late final String verificationId;

  Future<void> verifyPhoneNumber(String phoneNumber) async {
    try {
      emit(const PhoneVerificationLoadingState());
      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: signIn,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        timeout: const Duration(seconds: 60),
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      );
    } catch (e) {
      emit(PhoneVerificationState.failure(e.toString()));
    }
  }

  Future<void> submitOTP(String otpCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpCode);

    await signIn(credential);
  }

  void verificationFailed(FirebaseAuthException firebaseAuthException) {
    emit(PhoneVerificationFailureState(firebaseAuthException.message!));
  }

  void codeSent(String verificationId, int? resendToken) {
    this.verificationId = verificationId;
    emit(PhoneVerificationCodeSentState(verificationId, resendToken));
  }

  Future<void> signIn(PhoneAuthCredential credential) async {
    try {
      await firebaseAuth.signInWithCredential(credential);
      emit(const PhoneVerificationSuccessState());
    } catch (e) {
      emit(PhoneVerificationFailureState(e.toString()));
    }
  }

  void codeAutoRetrievalTimeout(verificationId) {
    emit(const PhoneVerificationCodeRetrievalTimedOutState());
  }

  Future<void> logOut() async {
    await firebaseAuth.signOut();
  }

  User getLoggedInUser() => firebaseAuth.currentUser!;
}
