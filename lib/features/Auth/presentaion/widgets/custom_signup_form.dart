import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_text_form.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/terms_and_condidtion.dart';
import 'package:flutter/material.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextFromField(
            labelText: AppStrings.fristName,
          ),
          const CustomTextFromField(
            labelText: AppStrings.lastName,
          ),
          const CustomTextFromField(
            labelText: AppStrings.emailAddress,
          ),
          const CustomTextFromField(
            labelText: AppStrings.password,
          ),
          const TermsAndConditionsWidget(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomElevatedButton(
                onPressed: () {}, text: const Text(AppStrings.signUp)),
          )
        ],
      ),
    );
  }
}
