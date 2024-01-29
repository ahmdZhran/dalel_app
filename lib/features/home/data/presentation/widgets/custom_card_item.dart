import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:flutter/material.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem(
      {super.key,
      required this.heightOfCard,
      required this.widthofCard,
      required this.heightofImage,
      required this.widthOfImage,
      required this.image,
      required this.text});
  final double heightOfCard;
  final double widthofCard;
  final double heightofImage;
  final double widthOfImage;
  final String text;
  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightOfCard,
      width: widthofCard,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey,
            blurRadius: 1,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: heightofImage,
            width: widthOfImage,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: image,
              ),
            ),
          ),
          Text(
            text,
            style: CustomTextStyles.poppins500style18.copyWith(
              color: AppColors.deepBrown,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
