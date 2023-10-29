import 'package:dalel_app/core/utls/app_assets.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.imageOnBoarding),
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
