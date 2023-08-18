import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_images.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';
import 'package:fox_crypto_ui/routes/routes.dart';
import 'package:fox_crypto_ui/shared_view/common_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Image.asset(
              AppImages.imgStarted,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              fit: BoxFit.contain,
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(
                  left: 24.0, top: 30.0, right: 24.0, bottom: 76.0),
              child: Text(
                "Fast and Flexible \nTrading",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: AppTextStyle.poppinsSemiBold),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 24),
                CommonButton(
                  label: "Sign up",
                  isStrokeButton: true,
                  onAction: () {
                    Navigator.pushNamed(context, Routes.signup);
                  },
                  width: MediaQuery.of(context).size.width / 2 - 36.0,
                ),
                const SizedBox(width: 24.0),
                CommonButton(
                  label: "Log in",
                  onAction: () {
                    Navigator.pushNamed(context, Routes.login);
                  },
                  width: MediaQuery.of(context).size.width / 2 - 36.0,
                ),
                const SizedBox(width: 24),
              ],
            ),
            const SizedBox(height: 44.0),
          ],
        ),
      ),
    );
  }
}
