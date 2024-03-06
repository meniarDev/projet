import 'package:flutter/material.dart';

class CustumElevatedButton extends StatelessWidget {
  const CustumElevatedButton({
    super.key,
    this.TitreButoon = "",
    required this.onpressed,
    this.couleur,
    });

  final String TitreButoon;
  final onpressed;
  final Color? couleur;
  
  
  @override
  Widget build(BuildContext context) {
    return 
    ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(couleur)),
      onPressed: onpressed, 
      child: Text(TitreButoon));
        
  }
}
  