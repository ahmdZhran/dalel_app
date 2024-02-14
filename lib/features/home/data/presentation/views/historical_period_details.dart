import 'package:dalel_app/features/home/data/models/historical_period_model.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodDetailsView extends StatelessWidget {
  const HistoricalPeriodDetailsView(
      {super.key, required this.historicalPeriodModel});
  final HistoricalPeriodsModel historicalPeriodModel;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('data')),
    );
  }
}
