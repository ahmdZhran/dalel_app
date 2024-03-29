import '../../../../core/functions/flutter_toast.dart';
import '../../../../core/functions/navigator_method.dart';
import '../../../../core/utls/app_color.dart';
import '../../../../core/utls/app_strings.dart';

import '../../../../core/widgets/custom_button.dart';
import '../auth_cubit/cubit/auth_cubit.dart';
import 'custom_text_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CustomForogotPasswordForm extends StatelessWidget {
  const CustomForogotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
          showToast('Check you box to reset your new password');
          customReplacementNavigate(context, '/signInView');
        } else if (state is ResetPasswwordFailerState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.forgotPasswordFormKey,
          child: Column(
            children: [
              CustomTextFromField(
                labelText: AppStrings.emailAddress,
                onChanged: (emailAdress) {
                  authCubit.emailAddress = emailAdress;
                },
              ),
              const Gap(176),
              state is ResetPasswwordLoadingState
                  ? const CircularProgressIndicator()
                  : Padding(
                      padding: const EdgeInsets.all(10),
                      child: CustomElevatedButton(
                        color: AppColors.primaryColor,
                        onPressed: () {
                          if (authCubit.forgotPasswordFormKey.currentState!
                              .validate()) {
                            authCubit.resetPasswordWithEmailLink();
                          }
                        },
                        text: Text(
                          AppStrings.sendResetPasswordLink,
                          style: TextStyle(color: AppColors.offWhite),
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
