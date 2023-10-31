import 'dart:ffi';

import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_check_box.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_text_form.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/terms_and_condidtion.dart';
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
            child: CustomTextField(
              labelText: AppStrings.fristName,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              labelText: AppStrings.lastName,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              labelText: AppStrings.emailAddress,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              labelText: AppStrings.password,
            ),
          ),
          SliverToBoxAdapter(
            child: TermsAndConditionsWidget(),
          )
        ],
      ),
    );
  }
}
