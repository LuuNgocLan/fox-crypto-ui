import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_images.dart';
import 'package:fox_crypto_ui/data/data_source.dart';
import 'package:fox_crypto_ui/generated/l10n.dart';
import 'package:fox_crypto_ui/screens/home/widgets/card_stack.dart';
import 'package:fox_crypto_ui/screens/home/widgets/coin_item.dart';
import 'package:fox_crypto_ui/screens/home/widgets/new_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppImages.icSearch),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppImages.icNotification),
            ),
          ],
          leading: null,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24.0),
              const Center(
                child: CardStack(
                  todayProfit: 1816.0,
                  totalBalance: 18368.11,
                ),
              ),
              const SizedBox(height: 36.0),
              titleOfContent(context, S.current.top_coins),
              const SizedBox(height: 24.0),
              SizedBox(
                height: 209.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: DataSource.coinData.length,
                  itemBuilder: (_, index) {
                    final leftMargin = index == 0 ? 24.0 : 0.0;
                    return CoinItem(
                        coin: DataSource.coinData[index],
                        leftMargin: leftMargin);
                  },
                ),
              ),
              const SizedBox(height: 36.0),
              titleOfContent(context, S.current.news),
              const SizedBox(height: 12.0),
              ...DataSource.newsData.map((e) => NewsItem(news: e)).toList(),
              const SizedBox(height: 72.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleOfContent(
    BuildContext context,
    String title,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 24.0),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Colors.white),
        ),
        const Spacer(),
        Text(
          S.current.see_all,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColors.primary),
        ),
        const SizedBox(width: 24.0),
      ],
    );
  }
}
