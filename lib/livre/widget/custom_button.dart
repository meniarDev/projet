import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  //final TextStyle textstl;
  final String text;
  const CustomButton({super.key,required this.onPressed,required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //style:textstl(),
     onPressed: onPressed,  
      child: Text(text),
    );
  }
}
