import 'package:dalel_app/features/home/data/presentation/widgets/historical_period_card.dart';
import 'package:flutter/material.dart';

class HistoricalPeriod extends StatelessWidget {
  const HistoricalPeriod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalPeriodItem(),
        HistoricalPeriodItem(),
      ],
    );
  }
}
