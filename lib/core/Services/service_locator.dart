import 'package:dalel_app/core/database/cach/cash_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
