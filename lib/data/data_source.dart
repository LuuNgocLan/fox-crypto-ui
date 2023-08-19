import 'package:fox_crypto_ui/config/app_images.dart';
import 'package:fox_crypto_ui/data/models/coin.dart';
import 'package:fox_crypto_ui/data/models/news.dart';

class DataSource {
  static final List<Coin> coinData = [
    Coin(AppImages.icBitcoin, "Bitcoin", 45898.16, 24.55,
        {0: 10, 1: 5, 2: 17, 3: 20, 4: 45, 5: 20, 6: 30}),
    Coin(AppImages.icEtherium, "Ethereum", 5898.16, 2.55,
        {0: 30, 1: 12, 2: 5, 3: 10, 4: 15, 5: 12, 6: 2}),
    Coin(AppImages.icBitcoin, "Bitcoin", 45898.16, 24.55,
        {0: 3, 1: 22, 2: 5, 3: 10, 4: 17, 5: 12, 6: 50}),
    Coin(AppImages.icBitcoin, "Bitcoin", 45898.16, 24.55,
        {0: 10, 1: 2, 2: 12, 3: 20, 4: 55, 5: 12, 6: 30}),
  ];
  static final List<News> newsData = [
    News(
        AppImages.img1,
        "Analysts project 32% upside for Coinbase stock despite ",
        "Finbold",
        "47min ago"),
    News(
        AppImages.img1,
        "Analysts project 32% upside for Coinbase stock despite ",
        "Finbold",
        "47min ago"),
  ];
}
