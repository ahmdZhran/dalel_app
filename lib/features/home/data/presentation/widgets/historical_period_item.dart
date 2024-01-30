import 'package:flutter/material.dart';
import '../../../../../core/utls/app_assets.dart';
import '../../../../../core/utls/app_color.dart';
import '../../../../../core/utls/text_styles.dart';

class HistoricalPeriod extends StatelessWidget {
  const HistoricalPeriod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalPeriodItem(),
        HistoricalPeriodItem(),
      ],
    );
  }
}

class HistoricalPeriodItem extends StatelessWidget {
  const HistoricalPeriodItem({Key? key}) : super(key: key);

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
        'Ancient Egypt',
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
    return Container(
      height: 96,
      width: 60,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.imageFrame,
          ),
        ),
      ),
    );
  }
}
