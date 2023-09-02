import 'package:flutter/material.dart';

class CommonCheckbox extends StatefulWidget {
  final Widget content;
  final Function(bool) onPressed;
  const CommonCheckbox({
    super.key,
    required this.content,
    required this.onPressed,
  });

  @override
  State<StatefulWidget> createState() {
    return _CommonCheckbox();
  }
}

class _CommonCheckbox extends State<CommonCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 22.0,
          width: 22.0,
          child: Checkbox(
            value: isChecked,
            onChanged: (value) {
              isChecked = value ?? false;
              setState(() {});
              widget.onPressed(isChecked);
            },
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(child: widget.content),
      ],
    );
  }
}
