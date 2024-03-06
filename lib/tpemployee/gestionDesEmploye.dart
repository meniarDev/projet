import 'package:flutter/material.dart';
import 'package:project1/tpemployee/addEmployee.dart';

class GestionDesEmploye extends StatelessWidget {
  void main() {
    runApp(GestionDesEmploye());
  }

  const GestionDesEmploye({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:AddEmployee() ,
    );
  }
}
