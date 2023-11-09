import 'package:dalel_app/core/functions/flutter_toast.dart';
import 'package:dalel_app/core/functions/navigator_method.dart';
import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/Auth/presentaion/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_text_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          showToast('Your account added succefully');
          customReplacementNavigate(context, '/homeView');
        } else if (state is SignupFailureState) {
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
                  authCubit.emailAdress = emailAdress;
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
                        onPressed: () {
                          if (authCubit.termsAndCondidtionCheckBox == true) {
                            if (authCubit.signinFormKey.currentState!
                                .validate()) {}
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
