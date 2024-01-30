import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utls/app_assets.dart';
import '../../../../core/utls/app_color.dart';
import '../../../../core/utls/text_styles.dart';

class WelcomPannerWidget extends StatelessWidget {
  const WelcomPannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.primaryColor),
      height: 290,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'Dalel',
            style: CustomTextStyles.saira700style32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                Assets.imageVector,
              ),
              SvgPicture.asset(Assets.imageVector2)
            ],
          )
        ],
      ),
    );
  }
}
