import '../../../../core/functions/flutter_toast.dart';
import '../../../../core/functions/navigator_method.dart';
import '../../../../core/utls/app_color.dart';
import '../../../../core/utls/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../auth_cubit/cubit/auth_cubit.dart';
import 'custom_text_form.dart';
import 'terms_and_condidtion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          showToast('added succefully, go to your email box to verfy it');
          customReplacementNavigate(context, '/signInView');
        } else if (state is SignupFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signupFormKey,
          child: Column(
            children: [
              CustomTextFromField(
                labelText: AppStrings.fristName,
                onChanged: (firstName) {
                  authCubit.firstName = firstName;
                },
              ),
              CustomTextFromField(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
              CustomTextFromField(
                labelText: AppStrings.emailAddress,
                onChanged: (emailAdress) {
                  authCubit.emailAddress = emailAdress;
                },
              ),
              CustomTextFromField(
                obscureText: authCubit.obsecurePasswordText,
                suffixIcon: IconButton(
                  icon: Icon(
                    authCubit.obsecurePasswordText == false
                        ? Icons.visibility_outlined
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    authCubit.obsecurePassword();
                  },
                ),
                labelText: AppStrings.password,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              const TermsAndConditionsWidget(),
              state is SignupLoadingState
                  ? const CircularProgressIndicator()
                  : Padding(
                      padding: const EdgeInsets.all(10),
                      child: CustomElevatedButton(
                        onTap: () {
                          customNavigate(context, '/signInView');
                        },
                        color: authCubit.termsAndCondidtionCheckBox == false
                            ? AppColors.grey
                            : null,
                        onPressed: () async {
                          if (authCubit.termsAndCondidtionCheckBox == true) {
                            if (authCubit.signupFormKey.currentState!
                                .validate()) {
                              await authCubit.signUpWithEmailAndPassword();
                            }
                          }
                        },
                        text: const Text(AppStrings.signUp),
                      ),
                    )
            ],
          ),
        );
      },
    );
  }
}
