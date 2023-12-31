import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_images.dart';
import 'package:fox_crypto_ui/data/models/onboading.dart';
import 'package:fox_crypto_ui/generated/l10n.dart';
import 'package:fox_crypto_ui/routes/routes.dart';
import 'package:fox_crypto_ui/screens/onboarding/widgets/slide_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    final List<Onboarding> data = [
      Onboarding(
          normalText: S.current.welcome_to_fox,
          coloredText: S.current.crypto,
          image: AppImages.imgOnboard1),
      Onboarding(
          normalText: S.current.transaction_security,
          image: AppImages.imgOnboard2),
      Onboarding(
          normalText: S.current.fast_and_reliable_market_update,
          image: AppImages.imgOnboard3),
    ];
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 36),
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, Routes.started);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  S.current.skip,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: AppColors.primary),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: PageView(
                  controller: pageController,
                  children: data
                      .map(
                        (e) => SlideItem(e.image, e.normalText, e.coloredText),
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
                    activeDotColor: AppColors.primary,
                  ), // your preferred effect
                ),
                const Spacer(),
                InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    Navigator.popAndPushNamed(context, Routes.started);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primary,
                    ),
                    height: 48,
                    width: 48,
                    child: SvgPicture.asset(AppImages.icArrow),
                  ),
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
