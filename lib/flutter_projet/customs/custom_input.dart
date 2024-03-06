import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    this.label = "",
    this.hint = "",
    this.type = TextInputType.text,
    this.icon,
    this.valider,
    this.onSaved
  });
  final String label;
  final String hint;
  final IconData? icon;
  final TextInputType? type;
  final String? Function(String?)? valider;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: type,
        decoration: InputDecoration(
            label: Text(label),
            labelStyle: TextStyle(fontSize: 17.0, color: Colors.red),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.red),
            prefix: Icon(icon),
            prefixIconColor: Colors.red,
            fillColor: Colors.brown.withOpacity(0.2),
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        validator: valider,
        onSaved: onSaved,
      ),
      padding: EdgeInsets.only(bottom: 20.0),
    );
  }
}
