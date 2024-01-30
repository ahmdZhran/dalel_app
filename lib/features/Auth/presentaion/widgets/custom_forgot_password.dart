import 'package:flutter/material.dart';

import 'cusotm_forgot_password_form.dart';
import 'cusotm_tilte_of_forgot_password.dart';
import 'custom_forogot_password_text.dart';
import 'custom_image_forgot_password.dart';

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
