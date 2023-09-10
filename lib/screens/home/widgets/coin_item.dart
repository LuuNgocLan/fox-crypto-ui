import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
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
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            "\$ ${coin.cost}",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: AppColors.placeHolder),
          ),
          const SizedBox(height: 2.0),
          Text(
            "${coin.changedValue}% ▲", //▼
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Color(0xff00C566)),
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
