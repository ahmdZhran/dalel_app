import 'package:dalel_app/core/functions/flutter_toast.dart';
import 'package:dalel_app/features/home/data/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_shimmer_category.dart';
import 'historical_period_card.dart';

class HistoricalPeriod extends StatelessWidget {
  const HistoricalPeriod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BlocConsumer listens to state changes in HomeCubit
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // If state is GetHistoricalPeriodFailer, show toast with error message
        if (state is GetHistoricalPeriodFailer) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        // If state is GetHistoricalPeriodLoading, show shimmer effect
        // Otherwise, display historical period items
        return state is GetHistoricalPeriodLoading
            ? const CustomShimmerCategory() // CustomShimmerCategory shows a shimmer effect
            : SizedBox(
                height: 96,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // Display HistoricalPeriodItem for each historical period model
                    return HistoricalPeriodItem(
                      historicalPeriodsModel: context
                          .read<HomeCubit>()
                          .historicalPeriodModels[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    // Add spacing between HistoricalPeriodItems
                    return const SizedBox(width: 20);
                  },
                  itemCount:
                      context.read<HomeCubit>().historicalPeriodModels.length,
                ),
              );
      },
    );
  }
}
