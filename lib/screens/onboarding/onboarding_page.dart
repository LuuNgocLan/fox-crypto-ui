import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_images.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';
import 'package:fox_crypto_ui/screens/onboarding/onboading.dart';
import 'package:fox_crypto_ui/screens/onboarding/slide_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    final List<Onboarding> data = [
      Onboarding(title: "Welcome To \nFoxcrypto", image: AppImages.imgOnboard1),
      Onboarding(
          title: "Transaction \nSecurity ", image: AppImages.imgOnboard2),
      Onboarding(
          title: "Fast and reliable \nMarket updated",
          image: AppImages.imgOnboard3),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Skip",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: AppTextStyle.poppinsRegular,
                    color: AppColors.acccent),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: PageView(
                  controller: pageController,
                  children: data
                      .map(
                        (e) => SlideItem(e.image, e.title),
                      )
                      .toList()),
            ),
            const SizedBox(height: 77),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 24),
                SmoothPageIndicator(
                  controller: pageController, // PageController
                  count: data.length,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 4,
                    dotWidth: 8,
                    activeDotColor: AppColors.acccent,
                  ), // your preferred effect
                ),
                const Spacer(),
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.acccent),
                  height: 48,
                  width: 48,
                  child: SvgPicture.asset(AppImages.icArrow),
                ),
                const SizedBox(width: 24),
              ],
            ),
            const SizedBox(height: 44),
          ],
        ),
      ),
    );
  }
}
