import 'package:dalel_app/core/functions/navigator_method.dart';
import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_signin_form.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/have_an_account_widget.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/welcom_panner_widget.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/welcom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: WelcomPannerWidget(),
          ),
          const SliverToBoxAdapter(
            child: Gap(32),
          ),
          const SliverToBoxAdapter(
            child: WelcomTextWidget(text: AppStrings.welcomeBack),
          ),
          const SliverToBoxAdapter(
            child: Gap(20),
          ),
          const SliverToBoxAdapter(
            child: CustomSignInForm(),
          ),
          SliverToBoxAdapter(
            child: HaveAnAccountWidget(
                text1: AppStrings.dontHaveAnAccount,
                text2: AppStrings.signUp,
                onTap: () {
                  customReplacementNavigate(context, '/signUpView');
                }),
          )
        ],
      ),
    );
  }
}
