import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';

class InputCode extends StatefulWidget {
  final Function(String) onSubmitValue;
  const InputCode({
    super.key,
    required this.onSubmitValue,
  });

  @override
  State<StatefulWidget> createState() {
    return _InputCode();
  }
}

class _InputCode extends State<InputCode> {
  List<String> input = List.generate(4, (index) => "");
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        codeItem(0),
        codeItem(1),
        codeItem(2),
        codeItem(3),
      ],
    );
  }

  Widget codeItem(int index) {
    return SizedBox(
      width: 74.0,
      height: 74.0,
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            input[index] = value;
            String codeValue = "";
            input.forEach((e) => codeValue += e);
            widget.onSubmitValue(codeValue);
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(
          fontFamily: AppTextStyle.poppinsSemiBold,
          fontSize: 27.0,
          color: AppColors.textColor,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
