import '../widgets/home_sections/app_bar_section.dart';
import '../widgets/home_sections/historical_character_section.dart';
import '../widgets/home_sections/historical_period_section.dart';
import '../widgets/home_sections/historical_souviners_section.dart';
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
              // custom AppBar section
              SliverToBoxAdapter(child: HomeAppBarSection()),
              // historical period section
              SliverToBoxAdapter(child: HistoricalPeriodSection()),
              // historical Character period
              SliverToBoxAdapter(child: HistoricalCharacterSection()),
              // historical souviners period
              SliverToBoxAdapter(child: HistoricalSouvinersSection())
            ],
          ),
        ),
      ),
    );
  }
}
