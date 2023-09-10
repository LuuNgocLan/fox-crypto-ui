import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';

class SlideItem extends StatelessWidget {
  final String imagePath;
  final String normalText;
  final String? coloredText;
  const SlideItem(this.imagePath, this.normalText, this.coloredText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: RichText(
            text: TextSpan(
              text: normalText,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: AppColors.textColor),
              children: <TextSpan>[
                TextSpan(
                  text: coloredText ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: AppColors.primary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
