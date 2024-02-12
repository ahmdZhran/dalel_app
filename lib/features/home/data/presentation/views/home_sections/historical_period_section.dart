import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utls/app_strings.dart';
import '../../widgets/historical_period_item.dart';

class HistoricalPeriodSection extends StatelessWidget {
  const HistoricalPeriodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.historicalPeriods),
        SizedBox(height: 20),
        HistoricalPeriod(),
        SizedBox(height: 40),
      ],
    );
  }
}
