import 'dart:ui';

import 'package:fox_crypto_ui/config/app_colors.dart';

/// AppTextStyle format as follows:
/// [fontWeight][fontSize][colorName][opacity]
/// Example: bold18White05
///

class AppTextStyle {
  static const String poppinsRegular = "Poppins-Regular";
  static const String poppinsMedium = "Poppins-Medium";
  static const String poppinsSemiBold = "Poppins-SemiBold";
  static const String poppinsBold = "Poppins-Bold";

  static final titleLarge = TextStyle(
    fontSize: 36,
    color: AppColors.textColor,
    fontFamily: poppinsRegular,
  );
}
