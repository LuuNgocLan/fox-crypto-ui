import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_typography.dart';
import 'package:fox_crypto_ui/generated/l10n.dart';
import 'package:fox_crypto_ui/routes/routes.dart';
import 'package:fox_crypto_ui/shared_view/common_app_bar.dart';
import 'package:fox_crypto_ui/shared_view/common_button.dart';
import 'package:fox_crypto_ui/shared_view/common_checkbox.dart';
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
          title: S.current.sign_up,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              const SizedBox(height: 4.0),
              Text(
                S.current.password_rule,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.placeHolder,
                    ),
              ),
              const SizedBox(height: 16.0),
              CommonCheckbox(
                content: RichText(
                  selectionColor: AppColors.primary,
                  text: TextSpan(
                    text: "${S.current.accept} ",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.placeHolder,
                        ),
                    children: [
                      TextSpan(
                        text: S.current.tearm_of_use,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.primary,
                            ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Terms of Use");
                          },
                      ),
                      TextSpan(
                        text: " & ",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.placeHolder,
                            ),
                      ),
                      TextSpan(
                        text: S.current.privacy_policy,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.primary,
                            ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Privacy Policy");
                          },
                      ),
                    ],
                  ),
                ),
                onPressed: (value) {
                  isAccepted = value;
                },
              ),
              const SizedBox(height: 72.0),
              CommonButton(
                onAction: () {
                  Navigator.popAndPushNamed(context, Routes.accountVerifyStep1);
                },
                label: S.current.sign_up,
              ),
              const Spacer(),
              RichText(
                textAlign: TextAlign.center,
                selectionColor: AppColors.primary,
                text: TextSpan(
                  text: S.current.already_have_an_account,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.placeHolder,
                      ),
                  children: [
                    TextSpan(
                      text: " ${S.current.login}!",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.primary,
                            fontFamily: AppTypography.poppinsMedium,
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
