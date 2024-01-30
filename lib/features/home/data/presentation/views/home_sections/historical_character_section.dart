import '../../../../../../core/utls/app_strings.dart';
import '../../../../../../core/widgets/custom_header_text.dart';
import '../../widgets/list_of_historical_character.dart';
import 'package:flutter/material.dart';

class HistoricalCharacterSection extends StatelessWidget {
  const HistoricalCharacterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.historicalCharacters),
        ListOfHistoricalCharacter(),
        SizedBox(height: 20),
      ],
    );
  }
}
