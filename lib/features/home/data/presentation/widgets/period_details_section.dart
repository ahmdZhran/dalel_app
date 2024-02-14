import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utls/app_assets.dart';

class PeriodDetailsSection extends StatelessWidget {
  const PeriodDetailsSection(
      {super.key,
      required this.periodNam,
      required this.description,
      required this.imageUrl});
  final String periodNam;
  final String description;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CustomHeaderText(text: "${AppStrings.about} $periodNam"),
              const SizedBox(width: 7),
              SvgPicture.asset(Assets.lifeKey)
            ],
          ),
          const SizedBox(height: 47),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -24,
                    child: SvgPicture.asset(Assets.pyramids),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 220,
                      width: 200,
                      child: Text(
                        description,
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.poppins500style14
                            .copyWith(color: AppColors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 80),
              SizedBox(
                width: 150,
                height: 200,
                child: CachedNetworkImage(imageUrl: imageUrl),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
