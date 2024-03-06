import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, this.labeltext="", this.hinttext="",this.clavier, this.valider,this.onsaved, required String label, required String hint, required IconData iconne, required TextInputType typeClavier});
  final String labeltext,hinttext;
  final TextInputType? clavier;
  final String? Function(String?)? valider;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
              style: TextStyle(color: Colors.pink, fontSize: 20.0),
              keyboardType: clavier,
              decoration: InputDecoration(
                label:Text(labeltext),
                hintText: hinttext,
                hintStyle: TextStyle(color: Colors.purple),
                prefixIcon: Icon(Icons.person),
                fillColor: Colors.lime.withOpacity(0.4),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                )
              ),
              validator: valider,
              onSaved: onsaved,
            );
  }
}