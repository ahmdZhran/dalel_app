import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_app/features/home/data/models/historical_period_model.dart';
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
          List<HistoricalPeriodsModel> historicalPeriods = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            historicalPeriods
                .add(HistoricalPeriodsModel.fromJason(snapshot.data!.docs[i]));
          }
          return SizedBox(
            height: 96,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return HistoricalPeriodItem(
                  historicalPeriodsModel: historicalPeriods[index],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 20);
              },
              itemCount: snapshot.data!.docs.length,
            ),
          );
        }

        return const Text("loading");
      },
    );
  }
}
