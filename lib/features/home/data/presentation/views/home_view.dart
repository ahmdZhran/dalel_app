import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.logout),
        ],
      ),
      body: const Center(
        child: Text("this is home view to  be know"),
      ),
    );
  }
}
