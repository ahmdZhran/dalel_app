import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:dalel_app/features/on_boarding/presentaion/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              AppStrings.skip,
              style: CustomTextStyles.poppins300style16
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const OnBoardingWidgetBody(),
        ],
      ),
    ));
  }
}
