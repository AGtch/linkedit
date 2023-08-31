part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loginInitial() = LoginInitial;

  const factory LoginState.loading() = LoadingSignupState;

  const factory LoginState.loginSuccessfully() = LoginSuccessfullyState;

  const factory LoginState.error() = ErrorInLoginState;
}
