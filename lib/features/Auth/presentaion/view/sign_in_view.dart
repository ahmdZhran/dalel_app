import 'package:dalel_app/core/utls/app_assets.dart';
import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
