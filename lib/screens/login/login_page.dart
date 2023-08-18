import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';
import 'package:fox_crypto_ui/shared_view/common_app_bar.dart';
import 'package:fox_crypto_ui/shared_view/common_button.dart';
import 'package:fox_crypto_ui/shared_view/common_edit_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: CommonAppBar(
          onBack: () {
            Navigator.pop(context);
          },
          title: "Log in",
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24.0),
              const CommonEditText(
                label: "Email Address",
                hintText: "Enter your email address",
              ),
              const SizedBox(height: 24.0),
              const CommonEditText(
                label: "Password",
                hintText: "Enter your password",
                isPassword: true,
              ),
              const SizedBox(height: 12.0),
              const Text(
                "Forgot password?",
                style: TextStyle(
                  color: AppColors.primary,
                  fontFamily: AppTextStyle.poppinsRegular,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 72.0),
              CommonButton(
                onAction: () {},
                label: "Log in",
              )
            ],
          ),
        ),
      ),
    );
  }
}
