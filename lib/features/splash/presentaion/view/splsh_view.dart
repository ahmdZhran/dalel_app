import 'package:dalel_app/core/database/cach/cash_helper.dart';
import 'package:dalel_app/core/functions/navigator_method.dart';
import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/utls/text_styles.dart';

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
        CacheHelper().getData(key: 'isBoardingVisited') ?? false;
    if (isBoardingVisited == true) {
      delayedNavigation(context, '/signUpView');
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
