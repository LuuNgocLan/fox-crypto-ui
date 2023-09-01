import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';
import 'package:fox_crypto_ui/generated/l10n.dart';
import 'package:fox_crypto_ui/routes/routes.dart';
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
          title: S.current.login,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24.0),
              CommonEditText(
                label: S.current.email_address,
                hintText: S.current.email_hint,
              ),
              const SizedBox(height: 24.0),
              CommonEditText(
                label: S.current.password,
                hintText: S.current.password_hint,
                isPassword: true,
              ),
              const SizedBox(height: 12.0),
              Text(
                S.current.forgot_password,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontFamily: AppTextStyle.poppinsRegular,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 72.0),
              CommonButton(
                onAction: () {
                  Navigator.pushNamed(context, Routes.verificationCode);
                },
                label: S.current.login,
              ),
              const Spacer(),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  selectionColor: AppColors.primary,
                  text: TextSpan(
                    text: S.current.new_to_foxcrypto,
                    style: const TextStyle(
                      color: AppColors.placeHolder,
                      fontFamily: AppTextStyle.poppinsRegular,
                      fontSize: 16.0,
                    ),
                    children: [
                      TextSpan(
                        text: S.current.create_new_account,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontFamily: AppTextStyle.poppinsMedium,
                          fontSize: 16.0,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.popAndPushNamed(context, Routes.signup);
                          },
                      ),
                    ],
                  ),
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
