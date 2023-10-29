import 'package:dalel_app/features/on_boarding/presentaion/view/on_bording_view.dart';
import 'package:dalel_app/features/splash/presentaion/view/splsh_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Auth/presentaion/view/sign_up_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplshView(),
    ),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: '/SignUpView',
      builder: (context, state) => const SignUpView(),
    )
  ],
);
