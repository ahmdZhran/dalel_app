import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/list_of_historical_souvenirs.dart';
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
