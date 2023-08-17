import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback? onAction;
  final String label;
  final bool isStrokeButton;
  final double width;

  const CommonButton({
    this.isStrokeButton = false,
    required this.onAction,
    required this.label,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 52.0,
      child: isStrokeButton
          ? OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.primary, width: 2),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              onPressed: onAction,
              child: labelButton(),
            )
          : FilledButton(
              style: FilledButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              onPressed: onAction,
              child: labelButton(),
            ),
    );
  }

  Widget labelButton() => Text(
        label,
        style: const TextStyle(
          fontSize: 20.0,
          fontFamily: AppTextStyle.poppinsMedium,
        ),
      );
}
