import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:flutter/material.dart';

class ForgotPasswordTitles extends StatelessWidget {
  const ForgotPasswordTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.topCenter,
        child: Text(AppStrings.enterYourRegisterEmailBelow));
  }
}
