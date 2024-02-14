import 'package:flutter/material.dart';

import '../../../../../core/models/data_model.dart';
import '../../../../../core/utls/app_strings.dart';
import '../../../../../core/widgets/custom_data_list_view.dart';
import '../../../../../core/widgets/custom_header_text.dart';

class HistoricalWarSection extends StatelessWidget {
  const HistoricalWarSection({super.key, required this.warsList});
  final List<DataModel> warsList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeaderText(text: AppStrings.ancientEgyptWars),
        const SizedBox(height: 16),
        CustomDataListView(dataList: warsList, routePath: "/warsDetailsView")
      ],
    );
  }
}
