part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignupLoadingState extends AuthState {}

final class SignupSuccessState extends AuthState {}

final class SignupFailureState extends AuthState {
  final String errMessage;

  SignupFailureState({required this.errMessage});
}

final class TermsAndConditionsUpdateState extends AuthState {}

final class ObsecurePassowrdTextState extends AuthState {}

final class SignInLoadingState extends AuthState {}

final class SigninSuccessState extends AuthState {}

final class SigninFailureState extends AuthState {
  final String errMessage;

  SigninFailureState({required this.errMessage});
}

final class ResetPasswwordLoadingState extends AuthState {}

final class ResetPasswordSuccessState extends AuthState {}

final class ResetPasswwordFailerState extends AuthState {
  final String errMessage;

  ResetPasswwordFailerState({required this.errMessage});
}
