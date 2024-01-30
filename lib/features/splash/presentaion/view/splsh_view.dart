import '../../../../core/Services/service_locator.dart';
import '../../../../core/database/cach/cash_helper.dart';
import '../../../../core/functions/navigator_method.dart';
import '../../../../core/utls/app_strings.dart';
import '../../../../core/utls/text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class SplshView extends StatefulWidget {
  const SplshView({super.key});

  @override
  State<SplshView> createState() => _SplshViewState();
}

class _SplshViewState extends State<SplshView> {
  @override
  void initState() {
    bool isBoardingVisited =
        getIt<CacheHelper>().getData(key: 'isBoardingVisited') ?? false;
    if (isBoardingVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigation(context, '/signInView')
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? delayedNavigation(context, '/homeNavBar')
              : delayedNavigation(context, '/signInView');
    } else {
      delayedNavigation(context, '/onBoarding');
    }

    super.initState();
  }

  void delayedNavigation(context, path) {
    Future.delayed(const Duration(seconds: 2), () {
      customReplacementNavigate(context, path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}
