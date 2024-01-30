import 'package:get_it/get_it.dart';

import '../../features/Auth/presentaion/auth_cubit/cubit/auth_cubit.dart';
import '../database/cach/cash_helper.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
