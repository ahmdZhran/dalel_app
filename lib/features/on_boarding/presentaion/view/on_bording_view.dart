import 'package:dalel_app/core/utls/app_assets.dart';
import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/features/on_boarding/presentaion/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text(AppStrings.skip),
          OnBoardingWidgetBody(),
        ],
      ),
    ));
  }
}
