import 'package:flutter/material.dart';

import '../../../../../core/utls/app_strings.dart';
import '../../../../../core/widgets/custom_header_text.dart';
import 'list_of_historical_character.dart';

class RecommendationSectionView extends StatelessWidget {
  const RecommendationSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        CustomHeaderText(text: AppStrings.recommendations),
        SizedBox(height: 16),
        ListOfHistoricalCharacter()
      ],
    );
  }
}
