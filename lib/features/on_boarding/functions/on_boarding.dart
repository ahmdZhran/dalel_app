import 'package:dalel_app/core/Services/service_locator.dart';
import 'package:dalel_app/core/database/cach/cash_helper.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: 'isBoardingVisited', value: true);
}
