import 'package:dalel_app/features/Auth/presentaion/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        BlocProvider.of<AuthCubit>(context)
            .updateTermsAndConditionsCheckBox(newValue: newValue);
      },
      value: isChiecked,
    );
  }
}
