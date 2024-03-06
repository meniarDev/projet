import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.couleur,this.titre="", required this.onPressed, required String text});
 
  final  Function()? onPressed;
  final Color? couleur;
  final String titre;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(couleur)),
      onPressed: onPressed, 
      child: Text(
        titre,
        ),);

  }
}