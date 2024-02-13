import 'package:dalel_app/core/models/data_model.dart';
import 'package:dalel_app/core/utls/app_strings.dart';

class WarsModel extends DataModel {
  WarsModel({
    required super.name,
    required super.image,
    required super.description,
  });
  factory WarsModel.fromJson(jsonData) {
    return WarsModel(
        name: jsonData[FireBaseStrings.name],
        image: jsonData['iamge'], // this for image
        description: jsonData[FireBaseStrings.description]);
  }
}
