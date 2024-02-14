import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utls/app_assets.dart';

class PeriodDetailsSection extends StatelessWidget {
  const PeriodDetailsSection({super.key, required this.periodNam});
  final String periodNam;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomHeaderText(text: "${AppStrings.about} $periodNam"),
            const SizedBox(width: 7),
            SvgPicture.asset(Assets.lifeKey)
          ],
        )
      ],
    );
  }
}
