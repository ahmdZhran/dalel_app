import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../core/utls/app_strings.dart';
import '../../widgets/historical_period_item.dart';

class HistoricalPeriodSection extends StatelessWidget {
  const HistoricalPeriodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection('historical_period').get(),
      builder: (context, snapshot) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeaderText(text: AppStrings.historicalPeriods),
            const SizedBox(height: 20),
            Text(snapshot.data!.docs[0]['name']),
            const HistoricalPeriod(),
            const SizedBox(height: 40),
          ],
        );
      },
    );
  }
}
