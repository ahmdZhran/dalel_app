import 'package:flutter/material.dart';

import '../../../../core/utls/app_strings.dart';

class ForgotPasswordTitles extends StatelessWidget {
  const ForgotPasswordTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.topCenter,
        child: Text(AppStrings.enterYourRegisterEmailBelow));
  }
}
