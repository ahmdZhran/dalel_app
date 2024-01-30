import '../../../../../../core/utls/app_strings.dart';
import '../../../../../../core/widgets/custom_header_text.dart';
import '../../widgets/list_of_historical_souvenirs.dart';
import 'package:flutter/material.dart';

class HistoricalSouvinersSection extends StatelessWidget {
  const HistoricalSouvinersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(
          text: AppStrings.historicalSouvenirs,
        ),
        ListOfHistoricalSouvenirs()
      ],
    );
  }
}
