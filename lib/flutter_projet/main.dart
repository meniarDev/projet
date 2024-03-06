import 'package:flutter/material.dart';
import 'package:project1/flutter_projet/pages/AddEmployee.dart';

//import 'package:project1/flutter_projet/pages/list_employee.dart';


void main() {
  runApp(GestionEmployee());
}

class GestionEmployee extends StatefulWidget {
  const GestionEmployee({super.key});

  @override
  State<GestionEmployee> createState() => _GestionEmployeeState();
}

class _GestionEmployeeState extends State<GestionEmployee> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddEmployee(),
    );
  }
}
