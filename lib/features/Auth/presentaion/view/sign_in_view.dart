import 'package:dalel_app/features/Auth/presentaion/widgets/welcom_panner_widget.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: WelcomPannerWidget(),
          )
        ],
      ),
    );
  }
}
