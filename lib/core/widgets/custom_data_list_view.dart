import 'package:dalel_app/core/models/data_model.dart';
import 'package:flutter/material.dart';

import '../../features/home/data/presentation/widgets/historical_period_card.dart';

class CustomDataListView extends StatelessWidget {
  const CustomDataListView({
    super.key,
    required this.dataList,
  });
  final List<DataModel> dataList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          // Display HistoricalPeriodItem for each historical period model
          return CustomDataListViewItem(model: dataList[index]);
        },
        separatorBuilder: (context, index) {
          // Add spacing between HistoricalPeriodItems
          return const SizedBox(width: 20);
        },
        itemCount: dataList.length,
      ),
    );
  }
}
