import 'package:dalel_app/core/utls/on_boarding/presentaion/view/on_bording_view.dart';
import 'package:dalel_app/features/splash/presentaion/view/splsh_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplshView(),
  ),
  GoRoute(
    path: '/onBoarding',
    builder: (context, state) => const OnBoardingView(),
  )
]);
