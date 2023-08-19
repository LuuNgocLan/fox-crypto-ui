import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_images.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';

class CardStack extends StatelessWidget {
  final double totalBalance;
  final double todayProfit;
  const CardStack({
    super.key,
    required this.totalBalance,
    required this.todayProfit,
  });

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width - 48;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: (maxWidth - 100.0) / 264 * 232,
          width: maxWidth - 100.0,
          decoration: BoxDecoration(
            color: const Color(0xfffff9f81),
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        Container(
          height: (maxWidth - 48.0) / 312 * 218,
          width: maxWidth - 48.0,
          decoration: BoxDecoration(
            color: const Color(0xffFFD676),
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        Container(
          height: maxWidth / 364 * 200,
          width: maxWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
          ),
          child: Image.asset(
            AppImages.bgCard,
            fit: BoxFit.cover,
          ),
        ),
        contentInformation(maxWidth),
      ],
    );
  }

  Widget contentInformation(
    double maxWidth,
  ) {
    return Container(
      height: maxWidth / 364 * 200,
      width: maxWidth,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Total Balance",
            style: TextStyle(
                fontFamily: AppTextStyle.poppinsRegular,
                fontSize: 16.0,
                color: AppColors.textGray),
          ),
          Text(
            "\$" "$totalBalance",
            style: const TextStyle(
                fontFamily: AppTextStyle.poppinsSemiBold,
                fontSize: 36.0,
                color: AppColors.background),
          ),
          const SizedBox(height: 44.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImages.icGrowth),
              const SizedBox(width: 4.0),
              Text(
                "\$" "$todayProfit",
                style: const TextStyle(
                    fontFamily: AppTextStyle.poppinsRegular,
                    fontSize: 15.0,
                    color: AppColors.background),
              ),
              const SizedBox(width: 8.0),
              const Text(
                "Today’s Profit",
                style: TextStyle(
                    fontFamily: AppTextStyle.poppinsRegular,
                    fontSize: 13.0,
                    color: AppColors.textGray),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
