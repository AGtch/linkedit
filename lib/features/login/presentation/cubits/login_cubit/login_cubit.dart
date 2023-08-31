import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repository/imp_login_repository.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final ImpLoginRepository impLoginRepository;

  LoginCubit(this.impLoginRepository) : super(const LoginInitial());
  late UserCredential userCredential;

  Future<void> loginWithUserNameAndPassword(
      {required String email, required String password}) async {
    emit(const LoginState.loading());
    userCredential = await impLoginRepository.loginWithEmailAndPassword(
        email: email, password: password);
    if (userCredential != null) {
      emit(const LoginSuccessfullyState());
    } else {
      emit(const ErrorInLoginState());
    }
  }
}
