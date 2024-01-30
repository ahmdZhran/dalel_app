import 'package:dalel_app/core/utls/app_assets.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/custom_card_item.dart';
import 'package:flutter/material.dart';

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
