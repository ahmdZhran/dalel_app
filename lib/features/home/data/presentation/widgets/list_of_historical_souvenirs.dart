import 'package:flutter/material.dart';

import '../../../../../core/utls/app_assets.dart';
import 'custom_card_item.dart';

class ListOfHistoricalSouvenirs extends StatelessWidget {
  const ListOfHistoricalSouvenirs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomCardItem(
              text: 'Souvenirs',
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
