import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';

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
          style: const TextStyle(
            color: AppColors.placeHolder,
            fontFamily: AppTextStyle.poppinsMedium,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 4.0),
        Container(
          decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(12.0)),
          child: TextFormField(
            obscureText: isHidePassword,
            style: const TextStyle(
              fontFamily: AppTextStyle.poppinsRegular,
              fontSize: 18.0,
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
              hintStyle: const TextStyle(
                fontFamily: AppTextStyle.poppinsRegular,
                fontSize: 18.0,
                color: AppColors.hintTextColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
