import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/Auth/presentaion/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_text_form.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/terms_and_condidtion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
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
                  authCubit.emailAdress = emailAdress;
                },
              ),
              CustomTextFromField(
                labelText: AppStrings.password,
                obscureText: true,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              const TermsAndConditionsWidget(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CustomElevatedButton(
                  color: authCubit.termsAndCondidtionCheckBox == false
                      ? AppColors.grey
                      : null,
                  onPressed: () {
                    if (authCubit.termsAndCondidtionCheckBox == true) {
                      if (authCubit.signupFormKey.currentState!.validate()) {
                        authCubit.signUpWithEmailAndPassword();
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
