import 'package:dalel_app/features/home/data/presentation/views/home_sections/app_bar_section.dart';
import 'package:dalel_app/features/home/data/presentation/views/home_sections/historical_character_section.dart';
import 'package:dalel_app/features/home/data/presentation/views/home_sections/historical_period_section.dart';
import 'package:dalel_app/features/home/data/presentation/views/home_sections/historical_souviners_section.dart';
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
            SliverToBoxAdapter(child: HomeAppBarSection()),
            SliverToBoxAdapter(child: HistoricalPeriodSection()),
            SliverToBoxAdapter(child: HistoricalCharacterSection()),
            SliverToBoxAdapter(child: HistoricalSouvinersSection())
          ],
        ),
      )),
    );
  }
}
