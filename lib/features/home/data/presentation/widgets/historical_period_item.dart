import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_app/features/home/data/presentation/widgets/historical_period_card.dart';
import 'package:flutter/material.dart';

class HistoricalPeriod extends StatelessWidget {
  const HistoricalPeriod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection('historical_period').get(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.docs[0].exists) {
          return const Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return SizedBox(
            height: 96,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const HistoricalPeriodItem();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 20);
              },
              itemCount: snapshot.data!.docs.length,
            ),
          );
        }

        return const Text("loading");
        // return  Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     const CustomHeaderText(text: AppStrings.historicalPeriods),
        //     const SizedBox(height: 20),
        //     Text(snapshot.data!.docs[0]['name']),
        //     const HistoricalPeriod(),
        //     const SizedBox(height: 40),
        //   ],
        // );
      },
    );
  }
}
