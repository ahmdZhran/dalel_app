import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAdress;
  String? password;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  signUpWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAdress!,
        password: password!,
      );
      emit(SignupSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignupFailureState(
            errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignupFailureState(
            errMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      print(e.toString());
      emit(SignupFailureState(errMessage: e.toString()));
    }
  }
}
