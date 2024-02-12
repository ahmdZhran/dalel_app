import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_app/features/home/data/models/historical_period_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<HistoricalPeriodsModel> historicalPeriodModels = [];
  getHistoricalPeriods() async {
    await FirebaseFirestore.instance.collection('historical_period').get().then(
          (value) => value.docs.forEach(
            (element) {
              historicalPeriodModels.add(
                HistoricalPeriodsModel.fromJason(element.data()),
              );
            },
          ),
        );
  }
}
