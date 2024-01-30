import '../../../../core/utls/app_strings.dart';
import '../../../../core/utls/text_styles.dart';
import 'package:flutter/material.dart';

class CustomForgotPasswordText extends StatelessWidget {
  const CustomForgotPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        AppStrings.forgotPassword,
        style: CustomTextStyles.poppins300style16
            .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
