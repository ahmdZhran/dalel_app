import '../../../../core/functions/navigator_method.dart';
import '../../../../core/utls/app_strings.dart';
import '../../../../core/utls/text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../data/on_boarding_model.dart';
import '../../functions/on_boarding.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomElevatedButton(
            onPressed: () {
              onBoardingVisited();
              customReplacementNavigate(context, '/signUpView');
            },
            text: const Text(
              AppStrings.createAccount,
              style: CustomTextStyles.poppins300style16,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              onBoardingVisited();
              customReplacementNavigate(context, '/signUpView');
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300style16
                  .copyWith(fontWeight: FontWeight.w400),
            ),
          )
        ],
      );
    } else {
      return CustomElevatedButton(
        onPressed: () {
          controller.nextPage(
            duration: const Duration(microseconds: 200),
            curve: Curves.bounceIn,
          );
        },
        text: const Text(
          'Next',
          style: CustomTextStyles.poppins300style16,
        ),
      );
    }
  }
}
