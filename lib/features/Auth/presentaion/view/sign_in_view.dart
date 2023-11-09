import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_signin_form.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/welcom_panner_widget.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/welcom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: WelcomPannerWidget(),
          ),
          SliverToBoxAdapter(
            child: Gap(32),
          ),
          SliverToBoxAdapter(
            child: WelcomTextWidget(text: AppStrings.welcomeBack),
          ),
          SliverToBoxAdapter(
            child: Gap(20),
          ),
          SliverToBoxAdapter(
            child: CustomSignInForm(),
          )
        ],
      ),
    );
  }
}
