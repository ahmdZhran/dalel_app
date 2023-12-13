import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/app_strings.dart';

import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/Auth/presentaion/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_text_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CustomForogotPasswordForm extends StatelessWidget {
  const CustomForogotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
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
              const Gap(20),
              state is SignInLoadingState
                  ? const CircularProgressIndicator()
                  : Padding(
                      padding: const EdgeInsets.all(10),
                      child: CustomElevatedButton(
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
