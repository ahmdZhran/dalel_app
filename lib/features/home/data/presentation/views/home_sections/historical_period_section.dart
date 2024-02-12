import '../../../../../../core/utls/app_strings.dart';
import '../../../../../../core/widgets/custom_header_text.dart';
import '../../widgets/historical_period_item.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HistoricalPeriodSection extends StatelessWidget {
  const HistoricalPeriodSection({super.key});

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
          Map<String, dynamic> data =
              snapshot.data!.docs[0].data() as Map<String, dynamic>;
          return Text(data['name']);
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
