import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int cpt = 0;
  Color scaffoldColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        backgroundColor: scaffoldColor,
        appBar: AppBar(
          title: const Text("NavBar"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: const Icon(
                  Icons.thumb_up,
                  size: 32,
                ),
                onTap: () => {
                  setState(() {
                    cpt += 1;
                    scaffoldColor =
                        Color(int.parse(getRandomColor(), radix: 16));
                  })
                },
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "valeur $cpt",
                style: const TextStyle(color: Colors.red),
              ),
              const Padding(padding: EdgeInsets.only(right: 10)),
              InkWell(
                child: const Icon(
                  Icons.thumb_down,
                  color: Colors.red,
                  size: 32,
                ),
                onTap: () => {
                  setState(() {
                    if (cpt >= 1) {
                      cpt -= 1;
                      scaffoldColor =
                          Color(int.parse(getRandomColor(), radix: 16));
                    }
                  })
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String getRandomColor() {
  List<String> content = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f'
  ];
  String color = "FF";
  for (int i = 0; i < 6; i++) {
    color += content[Random().nextInt(content.length)];
  }
  return color;
}
