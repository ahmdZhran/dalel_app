import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:flutter/material.dart';

class CustomForogtPasswordView extends StatelessWidget {
  const CustomForogtPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 80,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomForgotPasswordText(),
          )
        ],
      ),
    );
  }
}
