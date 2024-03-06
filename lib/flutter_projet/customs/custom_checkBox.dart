import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    this.value,
    this.msg = "",
    required this.onchanged,
  });
  final bool? value;
  final String msg;
  final void Function(bool?)? onchanged;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        value: value, onChanged: onchanged, title: Text(msg));
    /*return Row(
      children: [Checkbox(value: value, onChanged: onchanged), Text(msg)],
    );*/
  }
}
