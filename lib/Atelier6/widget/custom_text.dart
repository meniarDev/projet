import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType typeClavier;
  final IconData icon;
  final String? Function(String?)? valider;
  final void Function(String?)? onsaved;
  const CustomText(
      {super.key,
      required this.label,
      required this.hint,
      required this.typeClavier,
      required this.icon,
      required this.valider,
      this.onsaved});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: TextFormField(
          keyboardType: typeClavier,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            //prefixIcon: icon,
            hintText: hint,
          ),
          validator: valider,
          onSaved: onsaved,
        ));
  }
}
