import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: WelcomPannerWidget(),
          )
        ],
      ),
    );
  }
}

class WelcomPannerWidget extends StatelessWidget {
  const WelcomPannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.primaryColor),
      height: 290,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Dalel',
            style: CustomTextStyles.saira700style32,
          ),
        ],
      ),
    );
  }
}
