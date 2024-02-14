import 'package:dalel_app/features/home/data/models/historical_period_model.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/home_sections/app_bar_section.dart';
import 'package:flutter/material.dart';
import '../widgets/period_details_section.dart';

class HistoricalPeriodDetailsView extends StatelessWidget {
  const HistoricalPeriodDetailsView(
      {super.key, required this.historicalPeriodModel});
  final HistoricalPeriodsModel historicalPeriodModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: HomeAppBarSection()),
          const SliverToBoxAdapter(child: SizedBox(height: 7)),
          SliverToBoxAdapter(
              child: PeriodDetailsSection(
            periodNam: historicalPeriodModel.name,
            description: historicalPeriodModel.description,
            imageUrl: historicalPeriodModel.image,
          )),
        ],
      ),
    ));
  }
}
