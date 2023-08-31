part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = InitialSignupState;

  const factory SignupState.loading() = LoadingSignupState;

  const factory SignupState.createUserSuccessfully() =
      CreateUserSuccessfullyState;

  const factory SignupState.error() = ErrorInSignupState;
}
