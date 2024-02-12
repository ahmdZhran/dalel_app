import 'package:dalel_app/core/models/data_model.dart';
import 'package:dalel_app/core/utls/app_strings.dart';

class HistoricalPeriodsModel extends DataModel {
  final Map<String, dynamic> wars;

  HistoricalPeriodsModel(
      {required super.name,
      required super.image,
      required super.description,
      required this.wars});
  factory HistoricalPeriodsModel.fromJson(jsonData) {
    return HistoricalPeriodsModel(
        name: jsonData[FireBaseStrings.name],
        image: jsonData[FireBaseStrings.image],
        description: jsonData[FireBaseStrings.image],
        wars: jsonData[FireBaseStrings.wars]);
  }
}
