import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/custom_app_bar.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/historical_period_item.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/list_of_historical_character.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/list_of_historical_souvenirs.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(),
            ),
            SliverToBoxAdapter(
              child: CustomHeaderText(text: AppStrings.historicalPeriods),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 28)),
            SliverToBoxAdapter(child: HistoricalPeriod()),
            SliverToBoxAdapter(child: SizedBox(height: 40)),
            SliverToBoxAdapter(
              child: CustomHeaderText(text: AppStrings.historicalCharacters),
            ),
            SliverToBoxAdapter(child: ListOfHistoricalCharacter()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: CustomHeaderText(
                text: AppStrings.historicalSouvenirs,
              ),
            ),
            SliverToBoxAdapter(child: ListOfHistoricalSouvenirs())
          ],
        ),
      )),
    );
  }
}
