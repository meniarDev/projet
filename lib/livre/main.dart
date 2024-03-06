import 'package:flutter/material.dart';
import 'package:project1/livre/class/ajout_livre.dart';

void main() {
  runApp(MyWidget());
  

}
class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AddLivre());
  }
}
  
