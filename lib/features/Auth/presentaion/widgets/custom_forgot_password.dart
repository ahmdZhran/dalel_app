import 'package:dalel_app/features/Auth/presentaion/widgets/cusotm_forgot_password_form.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/cusotm_tilte_of_forgot_password.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_forogot_password_text.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_image_forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomForogtPasswordView extends StatelessWidget {
  const CustomForogtPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 80,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomForgotPasswordText(),
          ),
          SliverToBoxAdapter(
            child: ForgotPasswordImage(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: ForgotPasswordTitles(),
          ),
          SliverToBoxAdapter(
            child: CustomForogotPasswordForm(),
          )
        ],
      ),
    );
  }
}
