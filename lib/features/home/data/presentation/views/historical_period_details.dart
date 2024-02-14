import 'package:dalel_app/features/home/data/models/historical_period_model.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/home_sections/app_bar_section.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/list_of_historical_character.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utls/app_strings.dart';
import '../../../../../core/widgets/custom_header_text.dart';
import '../widgets/period_details_section.dart';
import '../widgets/period_wars_section.dart';

class HistoricalPeriodDetailsView extends StatelessWidget {
  const HistoricalPeriodDetailsView(
      {super.key, required this.historicalPeriodModel});
  final HistoricalPeriodsModel historicalPeriodModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: HomeAppBarSection()),
            const SliverToBoxAdapter(child: SizedBox(height: 7)),
            SliverToBoxAdapter(
              child: PeriodDetailsSection(
                periodNam: historicalPeriodModel.name,
                description: historicalPeriodModel.description,
                imageUrl: historicalPeriodModel.image,
              ),
            ),
            SliverToBoxAdapter(
              child: HistoricalWarSection(
                warsList: historicalPeriodModel.wars,
              ),
            ),
            const SliverToBoxAdapter(
              child: RecommendationSectionView(),
            )
          ],
        ),
      ),
    ));
  }
}

class RecommendationSectionView extends StatelessWidget {
  const RecommendationSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        CustomHeaderText(text: AppStrings.recommendations),
        SizedBox(height: 16),
        ListOfHistoricalCharacter()
      ],
    );
  }
}
