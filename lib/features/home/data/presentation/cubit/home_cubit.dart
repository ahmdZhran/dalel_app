import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/features/home/data/models/historical_period_model.dart';
import 'package:dalel_app/features/home/data/models/wars_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  // List to store historical period models
  List<HistoricalPeriodsModel> historicalPeriodModels = [];
  List<WarsModel> warsList = [];

  // Method to fetch historical periods from Firestore
  getHistoricalPeriods() async {
    try {
      // Emit loading state to notify listeners
      emit(GetHistoricalPeriodLoading());

      // Fetch historical periods from Firestore
      await FirebaseFirestore.instance
          .collection(FireBaseStrings.historicalPeriods)
          .get()
          .then(
            (value) => value.docs.forEach(
              (element) async {
                await getWarsList(element);
                // Convert Firestore document data into HistoricalPeriodsModel
                historicalPeriodModels.add(
                  HistoricalPeriodsModel.fromJson(element.data(), warsList),
                );
                emit(GetHistoricalPeriodSuccess());
              },
            ),
          );

      // Emit success state after successfully fetching historical periods
    } on Exception catch (e) {
      // Emit failure state if an exception occurs during fetching
      emit(GetHistoricalPeriodFailer(errMessage: e.toString()));
    }
  }

  Future<void> getWarsList(
      QueryDocumentSnapshot<Map<String, dynamic>> element) async {
    await FirebaseFirestore.instance
        .collection(FireBaseStrings.historicalPeriods)
        .doc(element.id)
        .collection('wars')
        .get()
        .then((value) => value.docs.forEach((element) {
              warsList.add(WarsModel.fromJson(element.data()));
            }));
  }
}
