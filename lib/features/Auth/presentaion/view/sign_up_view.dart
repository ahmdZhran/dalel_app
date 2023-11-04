import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_signup_form.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/have_an_account_widget.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/welcom_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 152,
            ),
          ),
          SliverToBoxAdapter(
            child: WelcomTextWidget(
              text: AppStrings.welcome,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomSignUpForm(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 80),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
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
