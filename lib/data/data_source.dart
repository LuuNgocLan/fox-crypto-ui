import 'package:fox_crypto_ui/config/app_images.dart';
import 'package:fox_crypto_ui/data/models/coin.dart';
import 'package:fox_crypto_ui/data/models/news.dart';

class DataSource {
  static final List<Coin> coinData = [
    Coin(AppImages.icBitcoin, "Bitcoin", 45898.16, 24.55),
    Coin(AppImages.icEtherium, "Ethereum", 5898.16, 2.55),
    Coin(AppImages.icBitcoin, "Bitcoin", 45898.16, 24.55),
    Coin(AppImages.icBitcoin, "Bitcoin", 45898.16, 24.55),
  ];
  static final List<News> newsData = [
    News(
        AppImages.img1,
        "Analysts project 32% upside for Coinbase stock despite ",
        "Finbold",
        "47min ago")
  ];
}
