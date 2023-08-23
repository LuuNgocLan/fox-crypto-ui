import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';
import 'package:fox_crypto_ui/routes/routes.dart';
import 'package:fox_crypto_ui/screens/verification_code/widgets/input_code.dart';
import 'package:fox_crypto_ui/screens/verification_code/widgets/timer_view.dart';
import 'package:fox_crypto_ui/shared_view/common_app_bar.dart';
import 'package:fox_crypto_ui/shared_view/common_button.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isStartCountdownTime = ValueNotifier<bool>(true);
    bool canResendCode = false;
    String verifyCode = "";
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: CommonAppBar(
          title: "Verification",
          onBack: () {
            Navigator.pop(context);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24.0),
              const Text(
                "Code have been sent to your email",
                style: TextStyle(
                  fontFamily: AppTextStyle.poppinsRegular,
                  color: AppColors.placeHolder,
                  fontSize: 16.0,
                ),
              ),
              const Text(
                "johny@gmail.com",
                style: TextStyle(
                  fontFamily: AppTextStyle.poppinsRegular,
                  color: AppColors.textColor,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 48.0),
              InputCode(
                onSubmitValue: (code) {
                  print("Get Input code: $code");
                },
              ),
              const SizedBox(height: 32.0),
              Center(
                child: ValueListenableBuilder<bool>(
                  builder: (BuildContext context, bool value, Widget? child) {
                    return TimerView(
                      onCompleted: () {
                        canResendCode = true;
                      },
                      startCountdown: value,
                    );
                  },
                  valueListenable: isStartCountdownTime,
                ),
              ),
              const SizedBox(height: 8.0),
              GestureDetector(
                onTap: () {
                  if (canResendCode) {
                    isStartCountdownTime.value = true;
                    print("resend code");
                  }
                },
                child: const Center(
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                      fontFamily: AppTextStyle.poppinsSemiBold,
                      color: AppColors.primary,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100.0),
              CommonButton(
                  onAction: () {
                    Navigator.popAndPushNamed(context, Routes.home);
                  },
                  label: "Verify"),
            ],
          ),
        ),
      ),
    );
  }
}
