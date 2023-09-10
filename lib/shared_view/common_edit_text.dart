import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_typography.dart';

class CommonEditText extends StatefulWidget {
  final String label;
  final String hintText;
  final bool isPassword;

  const CommonEditText({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  State<StatefulWidget> createState() {
    return _CommonEditText();
  }
}

class _CommonEditText extends State<CommonEditText> {
  bool isHidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.placeHolder,
                fontFamily: AppTypography.poppinsMedium,
              ),
        ),
        const SizedBox(height: 4.0),
        Container(
          decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(12.0)),
          child: TextFormField(
            obscureText: widget.isPassword ? isHidePassword : false,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.textColor,
                ),
            maxLines: 1,
            keyboardType: widget.isPassword
                ? TextInputType.visiblePassword
                : TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              border: InputBorder.none,
              fillColor: AppColors.secondary,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(isHidePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        isHidePassword = !isHidePassword;
                        setState(() {});
                      },
                    )
                  : null,
              hintText: widget.hintText,
              hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.hintTextColor,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
