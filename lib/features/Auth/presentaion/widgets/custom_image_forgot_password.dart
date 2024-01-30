import 'package:flutter/material.dart';

import '../../../../core/utls/app_assets.dart';

class ForgotPasswordImage extends StatelessWidget {
  const ForgotPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Image.asset(Assets.imageFrame),
    );
  }
}
