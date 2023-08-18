import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';
import 'package:fox_crypto_ui/routes/routes.dart';
import 'package:fox_crypto_ui/shared_view/common_app_bar.dart';
import 'package:fox_crypto_ui/shared_view/common_button.dart';
import 'package:fox_crypto_ui/shared_view/common_edit_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isAccepted = false;
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: CommonAppBar(
          onBack: () {
            Navigator.pop(context);
          },
          title: "Sign up",
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              const SizedBox(height: 4.0),
              const Text(
                "At least 8 characters with uppercase letters and numbers",
                style: TextStyle(
                  color: AppColors.placeHolder,
                  fontFamily: AppTextStyle.poppinsRegular,
                  fontSize: 13.0,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 22.0,
                    width: 22.0,
                    child: Checkbox(
                      value: isAccepted,
                      onChanged: (value) {
                        isAccepted = !isAccepted;
                      },
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  RichText(
                    selectionColor: AppColors.primary,
                    text: TextSpan(
                        text: "Accept ",
                        style: const TextStyle(
                          color: AppColors.placeHolder,
                          fontFamily: AppTextStyle.poppinsRegular,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: "Terms of Use",
                            style: const TextStyle(
                              color: AppColors.primary,
                              fontFamily: AppTextStyle.poppinsRegular,
                              fontSize: 16.0,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Terms of Use");
                              },
                          ),
                          const TextSpan(
                            text: " & ",
                            style: TextStyle(
                              color: AppColors.placeHolder,
                              fontFamily: AppTextStyle.poppinsRegular,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: const TextStyle(
                              color: AppColors.primary,
                              fontFamily: AppTextStyle.poppinsRegular,
                              fontSize: 16.0,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Privacy Policy");
                              },
                          ),
                        ]),
                  ),
                ],
              ),
              const SizedBox(height: 72.0),
              CommonButton(
                onAction: () {},
                label: "Sign up",
              ),
              const Spacer(),
              RichText(
                textAlign: TextAlign.center,
                selectionColor: AppColors.primary,
                text: TextSpan(
                  text: "Already have an account?",
                  style: const TextStyle(
                    color: AppColors.placeHolder,
                    fontFamily: AppTextStyle.poppinsRegular,
                    fontSize: 16.0,
                  ),
                  children: [
                    TextSpan(
                      text: " Log in!",
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontFamily: AppTextStyle.poppinsMedium,
                        fontSize: 16.0,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Log in!");
                          Navigator.popAndPushNamed(context, Routes.login);
                        },
                    ),
                  ],
                ),
              ),
               const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
