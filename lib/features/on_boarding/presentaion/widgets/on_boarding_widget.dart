import 'package:dalel_app/core/utls/app_assets.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody({super.key, required this.pageController});
final PageController pageController
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingData[index].imagePath),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              const Text(
                'Explore the histroy with Dalel in a smart way ',
                style: CustomTextStyles.poppins500style24,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              const SizedBox(
                height: 23,
              ),
              Text('Explore the history with Dalel in a smart way ',
                  style: CustomTextStyles.poppins500style14),
              const SizedBox(
                height: 23,
              ),
            ],
          );
        },
      ),
    );
  }
}
