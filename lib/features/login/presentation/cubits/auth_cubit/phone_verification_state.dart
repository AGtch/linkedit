import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_verification_state.freezed.dart';

@freezed
abstract class PhoneVerificationState with _$PhoneVerificationState {
  const factory PhoneVerificationState.initial() =
      PhoneVerificationInitialState;

  const factory PhoneVerificationState.loading() =
      PhoneVerificationLoadingState;

  const factory PhoneVerificationState.codeSent(
      String verificationId, int? resendToken) = PhoneVerificationCodeSentState;

  const factory PhoneVerificationState.codeRetrievalTimedOut() =
      PhoneVerificationCodeRetrievalTimedOutState;

  const factory PhoneVerificationState.verifySuccessfully() =
      PhoneVerificationSuccessState;

  const factory PhoneVerificationState.failure(String errorMessage) =
      PhoneVerificationFailureState;
}

abstract class VerifyPhoneNumberInputPort {
  Future<void> verifyPhoneNumber(String phoneNumber);
}
