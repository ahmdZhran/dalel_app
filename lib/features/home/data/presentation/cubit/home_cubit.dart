import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_app/features/home/data/models/historical_period_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  // List to store historical period models
  List<HistoricalPeriodsModel> historicalPeriodModels = [];

  // Method to fetch historical periods from Firestore
  getHistoricalPeriods() async {
    try {
      // Emit loading state to notify listeners
      emit(GetHistoricalPeriodLoading());

      // Fetch historical periods from Firestore
      await FirebaseFirestore.instance
          .collection('historical_period')
          .get()
          .then(
            (value) => value.docs.forEach(
              (element) {
                // Convert Firestore document data into HistoricalPeriodsModel
                historicalPeriodModels.add(
                  HistoricalPeriodsModel.fromJson(element.data()),
                );
              },
            ),
          );

      // Emit success state after successfully fetching historical periods
      emit(GetHistoricalPeriodSuccess());
    } on Exception catch (e) {
      // Emit failure state if an exception occurs during fetching
      emit(GetHistoricalPeriodFailer(errMessage: e.toString()));
    }
  }
}
