import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:dalel_app/features/home/data/models/historical_period_model.dart';
import 'package:dalel_app/features/home/data/presentation/views/home_sections/app_bar_section.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodDetailsView extends StatelessWidget {
  const HistoricalPeriodDetailsView(
      {super.key, required this.historicalPeriodModel});
  final HistoricalPeriodsModel historicalPeriodModel;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: HomeAppBarSection()),
          SliverToBoxAdapter(child: SizedBox(height: 7)),
        ],
      ),
    ));
  }
}

class PeriodDetailsSection extends StatelessWidget {
  const PeriodDetailsSection({super.key, required this.periodNam});
  final String periodNam;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [CustomHeaderText(text: "${AppStrings.about} $periodNam")],
        )
      ],
    );
  }
}
