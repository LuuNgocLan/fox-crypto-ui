import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBack;
  final double height;
  const CommonAppBar({
    super.key,
    required this.title,
    required this.onBack,
    this.height = kToolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        color: Colors.white,
        onPressed: () {
          onBack();
        },
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: AppTextStyle.poppinsSemiBold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(height);
}
