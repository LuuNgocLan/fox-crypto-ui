import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/generated/l10n.dart';
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
          title: S.current.verification,
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
              Text(
                S.current.code_have_been_sent_to_email,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.placeHolder,
                    ),
              ),
              Text(
                "johny@gmail.com",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.textColor,
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
                child: Center(
                  child: Text(
                    S.current.resend_code,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.primary,
                        ),
                  ),
                ),
              ),
              const SizedBox(height: 100.0),
              CommonButton(
                  onAction: () {
                    Navigator.popAndPushNamed(context, Routes.home);
                  },
                  label: S.current.verify),
            ],
          ),
        ),
      ),
    );
  }
}
