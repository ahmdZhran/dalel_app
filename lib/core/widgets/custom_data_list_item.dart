import 'package:dalel_app/core/functions/flutter_toast.dart';
import 'package:dalel_app/features/home/data/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_data_list_view.dart';
import 'custom_shimmer_category.dart';

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
            : CustomDataListView(
                dataList: context.read<HomeCubit>().historicalPeriodModels,
                routePath: "/historicalPeriodsDetailView");
      },
    );
  }
}
