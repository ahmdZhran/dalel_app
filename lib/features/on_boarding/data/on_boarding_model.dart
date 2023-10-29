import 'package:dalel_app/core/utls/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: Assets.imageOnBoarding,
    title: 'Explore the histroy with Dalel in a smart way ',
    subTitle: 'Explore the history with dalel in a smart way ',
  ),
  OnBoardingModel(
    imagePath: Assets.imageOnBoarding1,
    title: 'Explore the histroy with Dalel in a smart way ',
    subTitle: 'Explore the history with dalel in a smart way ',
  ),
  OnBoardingModel(
    imagePath: Assets.imageOnBoarding2,
    title: 'Explore the histroy with Dalel in a smart way ',
    subTitle: 'Explore the history with dalel in a smart way ',
  ),
];
