import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
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
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CustomElevatedButton(
              onPressed: () {
                _controller.nextPage(
                  duration: const Duration(microseconds: 200),
                  curve: Curves.bounceIn,
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
