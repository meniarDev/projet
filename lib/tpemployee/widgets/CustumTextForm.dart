import 'package:flutter/material.dart';

class CustumTextForm extends StatelessWidget {
  const CustumTextForm({
    Key? key,
    this.label = "",
    this.hint = "",
    this.uneIcone,
    this.TypeClavier = TextInputType.text,
    this.valider,
  }) : super(key: key);

  final String label;
  final String hint;
  final IconData? uneIcone;
  final TextInputType? TypeClavier;
  final String? Function(String?)? valider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        keyboardType: TypeClavier,
        style: TextStyle(fontSize: 18, color: Colors.brown, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 18, color: Colors.brown),
          hintText: hint,
          hintStyle: TextStyle(fontSize: 18, color: Colors.brown),
          prefixIcon: Icon(uneIcone ?? Icons.perm_identity),
          prefixIconColor: Colors.black,
          fillColor: Colors.yellow.withOpacity(0.2),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
          errorStyle: TextStyle(fontSize: 18),
        ),
        validator: valider, // Call the validator method
      ),
    );
  }
}
