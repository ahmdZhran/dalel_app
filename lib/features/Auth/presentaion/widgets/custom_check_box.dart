import 'package:flutter/material.dart';

class CustomCheckBoxWidget extends StatefulWidget {
  const CustomCheckBoxWidget({super.key});

  @override
  State<CustomCheckBoxWidget> createState() => _CustomCheckBoxWidgetState();
}

class _CustomCheckBoxWidgetState extends State<CustomCheckBoxWidget> {
  bool isChiecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: (newValue) {
        setState(() {});
        isChiecked = newValue!;
      },
      value: isChiecked,
    );
  }
}
