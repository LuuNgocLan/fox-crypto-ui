import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_typography.dart';
import 'package:fox_crypto_ui/data/models/news.dart';

class NewsItem extends StatelessWidget {
  final News news;
  const NewsItem({
    super.key,
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      height: 133.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
        color: const Color(0XFF282B35),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(13.0),
              child: Image.asset(
                news.thumbnail,
                height: 98.0,
                width: 98.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: AppTypography.poppinsMedium,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 8.0),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: news.author,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: AppColors.primary),
                        children: [
                          TextSpan(
                            text: " • ${news.time}",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: AppColors.placeHolder),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
