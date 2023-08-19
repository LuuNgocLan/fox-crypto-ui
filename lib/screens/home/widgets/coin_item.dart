import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';
import 'package:fox_crypto_ui/data/models/coin.dart';
import 'package:fox_crypto_ui/screens/home/widgets/trend_paint.dart';

class CoinItem extends StatelessWidget {
  final Coin coin;
  final double leftMargin;
  const CoinItem({
    super.key,
    required this.coin,
    this.leftMargin = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: EdgeInsets.only(right: 20.0, left: leftMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
        color: const Color(0XFF282B35),
      ),
      width: 171,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(coin.iconPath),
              const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  coin.name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontFamily: AppTextStyle.poppinsSemiBold,
                      fontSize: 18.0,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            "\$ ${coin.cost}",
            style: const TextStyle(
                fontFamily: AppTextStyle.poppinsRegular,
                fontSize: 18.0,
                color: AppColors.placeHolder),
          ),
          const SizedBox(height: 2.0),
          Text(
            "${coin.changedValue}% ▲", //▼
            style: const TextStyle(
                fontFamily: AppTextStyle.poppinsRegular,
                fontSize: 13.0,
                color: Color(0xff00C566)),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: CustomPaint(
              painter:
                  TrendPainter(coin.trend.entries.map((e) => e.value).toList()),
            ),
          ),
        ],
      ),
    );
  }
}
