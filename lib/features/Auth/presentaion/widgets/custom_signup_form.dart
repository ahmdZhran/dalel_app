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
        return Form(
          child: Column(
            children: [
              CustomTextFromField(
                labelText: AppStrings.fristName,
                onChanged: (firstName) {
                  BlocProvider.of<AuthCubit>(context).firstName = firstName;
                },
              ),
              CustomTextFromField(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  BlocProvider.of<AuthCubit>(context).lastName = lastName;
                },
              ),
              CustomTextFromField(
                labelText: AppStrings.emailAddress,
                onChanged: (emailAdress) {
                  BlocProvider.of<AuthCubit>(context).emailAdress = emailAdress;
                },
              ),
              CustomTextFromField(
                labelText: AppStrings.password,
                onChanged: (password) {
                  BlocProvider.of<AuthCubit>(context).password = password;
                },
              ),
              const TermsAndConditionsWidget(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CustomElevatedButton(
                    onPressed: () {
                      BlocProvider.of<AuthCubit>(context)
                          .signUpWithEmailAndPassword();
                    },
                    text: const Text(AppStrings.signUp)),
              )
            ],
          ),
        );
      },
    );
  }
}
