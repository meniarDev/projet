import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.textValue = "",
    this.clr,
    required this.onpressed,
  });
  final String textValue;
  final void Function()? onpressed;
  final Color? clr;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(clr)), 
      child: Text(textValue),
    );
  }
}
