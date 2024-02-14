import 'package:dalel_app/core/utls/app_assets.dart';
import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:dalel_app/features/home/data/models/historical_period_model.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/home_sections/app_bar_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          )),
        ],
      ),
    ));
  }
}
