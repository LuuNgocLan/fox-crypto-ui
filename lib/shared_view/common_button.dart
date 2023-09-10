import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback? onAction;
  final String label;
  final bool isStrokeButton;
  final double width;

  const CommonButton({
    this.isStrokeButton = false,
    required this.onAction,
    required this.label,
    this.width = double.infinity,
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
                textStyle: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppColors.secondary),
              ),
              onPressed: onAction,
              child: Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppColors.primary),
              ))
          : FilledButton(
              style: FilledButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              onPressed: onAction,
              child: Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppColors.secondary),
              ),
            ),
    );
  }
}
