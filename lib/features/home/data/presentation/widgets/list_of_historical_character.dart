import 'package:dalel_app/features/home/data/presentation/widgets/character_item.dart';
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
