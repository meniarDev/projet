import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final String hint;
  final IconData? iconne;
  final TextInputType? typeClavier;
  final String? Function(String?)? valider;

  const CustomText({
    Key? key,
    required this.label,
    required this.hint,
    this.iconne,
    this.typeClavier,
    this.valider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: TextFormField(
        style: TextStyle(color: Colors.cyan),
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(iconne),
          hintText: hint,
        ),
        keyboardType: typeClavier,
        validator: valider,
      ),
    );
  }
}