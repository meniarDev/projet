import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final String hint;
  final IconData? uneIcon;
  final TextInputType? typeClavier;
  final String? Function(String?)? valider;
  const CustomText(
      {super.key,
      this.label = "",
      this.hint = "",
      this.uneIcon,
      this.typeClavier,
      this.valider, required IconData uneIcone});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: TextFormField(
          keyboardType: typeClavier,
          style: const TextStyle(
            color: Colors.red,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: Text(label),
            // icon: Icon(Icons.login_rounded),
            prefixIcon: Icon(uneIcon),
            prefixIconColor: Colors.black,
            hintText: hint,
          ),
          validator: valider,
        ),
      ),
    );
  }
}
