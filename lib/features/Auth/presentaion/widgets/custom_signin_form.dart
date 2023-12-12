import 'package:dalel_app/core/functions/flutter_toast.dart';
import 'package:dalel_app/core/functions/navigator_method.dart';
import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/app_strings.dart';

import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/Auth/presentaion/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_text_form.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/forget_password.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SigninSuccessState) {
          showToast('Done , check your email to verify your account');
          customReplacementNavigate(context, '/signInView');
        } else if (state is SigninFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signinFormKey,
          child: Column(
            children: [
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
              const Gap(20),
              const ForgetPasswordTextWidget(),
              const Gap(80),
              state is SignInLoadingState
                  ? const CircularProgressIndicator()
                  : Padding(
                      padding: const EdgeInsets.all(10),
                      child: CustomElevatedButton(
                        onTap: () {
                          customNavigate(context, '/signInView');
                        },
                        color: AppColors.primaryColor,
                        onPressed: () {
                          if (authCubit.signinFormKey.currentState!
                              .validate()) {
                            authCubit.signInWithEmailAndPassowrd();
                          }
                        },
                        text: Text(
                          AppStrings.signIn,
                          style: TextStyle(color: AppColors.offWhite),
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
