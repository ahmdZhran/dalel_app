import 'package:flutter/material.dart';

import '../../../../../core/utls/app_assets.dart';
import 'custom_card_item.dart';

class ListOfHistoricalCharacter extends StatelessWidget {
  const ListOfHistoricalCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190, // Adjust the height based on your design
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomCardItem(
              text: 'Saladine',
              heightOfCard: 90,
              widthofCard: 110,
              heightofImage: 120,
              widthOfImage: 200,
              image: AssetImage(Assets.imageFrame),
            ),
          );
        },
      ),
    );
  }
}
