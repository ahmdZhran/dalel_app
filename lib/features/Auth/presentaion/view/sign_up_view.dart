import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_text_form.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/have_an_account_widget.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/terms_and_condidtion.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/welcom_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 152,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomTextWidget(
              text: AppStrings.welcome,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFromField(
              labelText: AppStrings.fristName,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFromField(
              labelText: AppStrings.lastName,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFromField(
              labelText: AppStrings.emailAddress,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextFromField(
              labelText: AppStrings.password,
            ),
          ),
          const SliverToBoxAdapter(
            child: TermsAndConditionsWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 80),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomElevatedButton(
                onPressed: () {},
                text: const Text(
                  AppStrings.signUp,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const SliverToBoxAdapter(
            child: HaveAnAccountWidget(
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.signUp,
            ),
          ),
        ],
      ),
    );
  }
}
