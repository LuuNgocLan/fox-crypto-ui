import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_images.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';
import 'package:fox_crypto_ui/generated/l10n.dart';
import 'package:fox_crypto_ui/routes/routes.dart';
import 'package:fox_crypto_ui/shared_view/common_button.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(AppImages.imgCompleted),
            const SizedBox(height: 16.0),
            Text(
              S.current.completed_title,
              style: const TextStyle(
                fontFamily: AppTextStyle.poppinsSemiBold,
                fontSize: 26,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              S.current.completed_msg,
              style: const TextStyle(
                fontFamily: AppTextStyle.poppinsRegular,
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 54),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: CommonButton(
                  onAction: () {
                    Navigator.popAndPushNamed(context, Routes.home);
                  },
                  label: S.current.back_to_home),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
