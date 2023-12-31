import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool? termsAndCondidtionCheckBox = false;
  bool obsecurePasswordText = true;

  GlobalKey<FormState> signupFormKey = GlobalKey();

  GlobalKey<FormState> signinFormKey = GlobalKey();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey();
  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      await addUserProfile();
      await verifyEmai();
      emit(SignupSuccessState());
    } on FirebaseAuthException catch (e) {
      _signUpHandleExceptions(e);
    } catch (e) {
      print(e.toString());
      emit(SignupFailureState(errMessage: e.toString()));
    }
  }

  void _signUpHandleExceptions(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      emit(
          SignupFailureState(errMessage: 'The password provided is too weak.'));
    } else if (e.code == 'email-already-in-use') {
      emit(SignupFailureState(
          errMessage: 'The account already exists for that email.'));
    }
  }

  Future<void> verifyEmai() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  void updateTermsAndConditionsCheckBox({required newValue}) {
    termsAndCondidtionCheckBox = newValue;
    emit(TermsAndConditionsUpdateState());
  }

  void obsecurePassword() {
    obsecurePasswordText = !obsecurePasswordText;
    emit(ObsecurePassowrdTextState());
  }

  Future<void> signInWithEmailAndPassowrd() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SigninSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print(e.code);
        emit(SigninFailureState(errMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        print('wrong password');
        emit(SigninFailureState(
            errMessage: 'Wrong password provided for that user.'));
      } else if (e.code == 'invalid email') {
        emit(SignupFailureState(errMessage: 'this email is already exist'));
      } else {
        emit(SignupFailureState(errMessage: 'e.code'));
      }
    } catch (e) {
      emit(SigninFailureState(errMessage: e.toString()));
    }
  }

  Future<void> resetPasswordWithEmailLink() async {
    emit(ResetPasswwordLoadingState());
    try {
      emit(ResetPasswordSuccessState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
    } on Exception catch (e) {
      emit(ResetPasswwordFailerState(errMessage: e.toString()));
    }
  }

  Future<void> addUserProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.add({
      "first_name": firstName,
      "last_name": lastName,
      "email": emailAddress,
    });
  }
}
