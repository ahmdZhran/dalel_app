import 'package:dalel_app/core/functions/navigator_method.dart';
import 'package:dalel_app/features/on_boarding/presentaion/widgets/custom_nav_bar.dart';
import 'package:dalel_app/features/on_boarding/presentaion/widgets/get_buttons.dart';
import 'package:dalel_app/features/on_boarding/presentaion/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            CustomNavBar(
              onTap: () {
                customReplacementNavigate(context, '/signUpView');
              },
            ),
            OnBoardingWidgetBody(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {});
                currentIndex = index;
              },
            ),
            GetButtons(currentIndex: currentIndex, controller: _controller)
          ],
        ),
      ),
    );
  }
}
