import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/repository/imp_signup_repository.dart';

part 'signup_cubit.freezed.dart';
part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final ImpSignupRepository impSignupRepository;

  SignupCubit({
    required this.impSignupRepository,
  }) : super(const SignupState.initial());

  late final UserCredential userCredential;

  void createUserWithEmailAndPassword(String email, String password) async {
    emit(const LoadingSignupState());
    userCredential = await impSignupRepository.createUserWithEmailAndPassword(
        email: email, password: password);
    if (userCredential != null) {
      emit(const CreateUserSuccessfullyState());
    } else {
      emit(const ErrorInSignupState());
    }
  }

  void reloadData() {
    impSignupRepository.reloadData();
  }
}
