import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Exercice4());
  }
}

class Exercice4 extends StatefulWidget {
  const Exercice4({super.key});

  @override
  State<Exercice4> createState() => _Exercice4State();
}

class _Exercice4State extends State<Exercice4> {
  int iconCode = 0xe123;
  int generateIcon() {
    String ch = "0123456789abcdef";
    String code = "0xe";
    for (int i = 0; i < 3; i++) {
      code += ch[Random().nextInt(ch.length)];
    }
    return int.parse(code);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercice 4"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(IconData(iconCode, fontFamily: 'MaterialIcons')),
          ElevatedButton(
              child: const Text("Click"),
              onPressed: () => {
                    setState(() {
                      iconCode = generateIcon();
                    })
                  }),
        ]),
      ),
    );
  }
}
