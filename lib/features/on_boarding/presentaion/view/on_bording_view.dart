import 'package:dalel_app/core/functions/navigator_method.dart';
import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:dalel_app/features/on_boarding/presentaion/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
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
          OnBoardingWidgetBody(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {});
              currentIndex = index;
            },
          ),
          currentIndex == onBoardingData.length - 1
              ? Column(
                  children: [
                    CustomElevatedButton(
                      onPressed: () {
                        customNavigate(context, '/signUpView');
                      },
                      text: const Text(
                        AppStrings.createAccount,
                        style: CustomTextStyles.poppins300style16,
                      ),
                    ),
                  ],
                )
              : CustomElevatedButton(
                  onPressed: () {
                    _controller.nextPage(
                      duration: const Duration(microseconds: 200),
                      curve: Curves.bounceIn,
                    );
                  },
                  text: const Text(
                    'Next',
                    style: CustomTextStyles.poppins300style16,
                  ),
                )
        ],
      ),
    ));
  }
}
