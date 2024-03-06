import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.value,
    this.text = "",
    required this.onchanged,
  });

  final void Function(bool?)? onchanged;
  final bool? value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: onchanged,
      title: Text(text),
    );
    /*return Row(
      children: [
        Checkbox(value: value, onChanged: onchanged),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 18.0),
        ),
      ],
    );*/
  }
}