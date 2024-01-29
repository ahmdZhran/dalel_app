import 'package:dalel_app/core/utls/app_assets.dart';
import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:flutter/material.dart';

class ListOfHistoricalCharacter extends StatelessWidget {
  const ListOfHistoricalCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CharacterItme(),
          );
        },
      ),
    );
  }
}

class CharacterItme extends StatelessWidget {
  const CharacterItme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 110,
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
            height: 180,
            width: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(Assets.imageFrame),
              ),
            ),
          ),
          Text(
            'Saladine',
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
