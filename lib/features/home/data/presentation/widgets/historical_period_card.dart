import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:dalel_app/features/home/data/models/historical_period_model.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodItem extends StatelessWidget {
  const HistoricalPeriodItem({Key? key, required this.historicalPeriodsModel})
      : super(key: key);
  final HistoricalPeriodsModel historicalPeriodsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey,
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          _buildText(),
          _buildImage(),
        ],
      ),
    );
  }

  Widget _buildText() {
    return SizedBox(
      height: 47,
      width: 62,
      child: Text(
        historicalPeriodsModel.name,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: CustomTextStyles.poppins500style18.copyWith(
          color: AppColors.deepBrown,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
      child: Container(
        height: 96,
        width: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(historicalPeriodsModel.image)),
        ),
      ),
    );
  }
}
