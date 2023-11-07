import 'package:dalel_app/core/functions/navigator_method.dart';

import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                customNavigate(context, '/signUpView');
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: const Center(
        child: Text("this is sign in view"),
      ),
    );
  }
}
