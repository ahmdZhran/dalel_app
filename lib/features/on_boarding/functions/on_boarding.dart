import '../../../core/Services/service_locator.dart';
import '../../../core/database/cach/cash_helper.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: 'isBoardingVisited', value: true);
}
