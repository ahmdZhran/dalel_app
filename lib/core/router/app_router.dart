import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/Auth/presentaion/auth_cubit/cubit/auth_cubit.dart';
import '../../features/Auth/presentaion/view/sign_in_view.dart';
import '../../features/Auth/presentaion/view/sign_up_view.dart';
import '../../features/Auth/presentaion/widgets/custom_forgot_password.dart';
import '../../features/home/data/presentation/views/home_view.dart';
import '../../features/home/data/presentation/widgets/home_navigatoin_bar.dart';
import '../../features/on_boarding/presentaion/view/on_bording_view.dart';
import '../../features/splash/presentaion/view/splsh_view.dart';

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
      path: '/signUpView',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: '/signInView',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignInView(),
      ),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const HomeView(),
      ),
    ),
    GoRoute(
      path: '/forgotPassword',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const CustomForogtPasswordView(),
      ),
    ),
    GoRoute(
      path: '/homeNavBar',
      builder: (context, state) => const HomeNavBarWidget(),
    ),
  ],
);
