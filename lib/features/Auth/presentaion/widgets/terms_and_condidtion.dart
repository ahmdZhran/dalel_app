import 'package:dalel_app/core/utls/app_strings.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:dalel_app/features/Auth/presentaion/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBoxWidget(),
        const Text.rich(
          TextSpan(
            text: AppStrings.iHaveAgreeToOur,
          ),
        ),
        Text.rich(
          TextSpan(
            text: AppStrings.termsAndCondition,
            style: CustomTextStyles.pacifico400style64.copyWith(
              decoration: TextDecoration.underline,
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}
