import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    this.value = "",
    this.groupValue = "",
    this.onchanged,
    this.titre = "",
    this.soutitre = "",
  });
  final String value;
  final String groupValue;
  final String titre;
  final String soutitre;
  final void Function(String?)? onchanged;
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: value,
      groupValue: groupValue,
      onChanged: onchanged,
      title: Text(titre),
      subtitle: Text(soutitre),
    );
  }
}
