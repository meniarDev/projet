import 'package:flutter/material.dart';
import 'package:project1/TP5/AddEtudiant.dart';

void main()
{

  runApp(GestionEtudiant());
}


class GestionEtudiant extends StatelessWidget {
  const GestionEtudiant({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:AddEtudiant());
  }
}