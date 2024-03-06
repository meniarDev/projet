import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? Function(String?)? valider;
  final String titre;
  final void Function()? onpressed;
  //final Color couleur;
  //final formkey = GlobalKey<FormState>();
  const CustomButton({
    super.key,
    this.valider,
    required this.titre,
    this.onpressed,
    //required this.couleur
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //style:,
      onPressed: onpressed,
      child: Text(titre),
    );
  }
}
