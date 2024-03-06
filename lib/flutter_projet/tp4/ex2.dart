import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("NavBar"),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int cpt = 0;
  Color clr1 = Colors.green;
  Color clr2 = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
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
              })
            },
          ),
          const Padding(padding: EdgeInsets.only(left: 10)),
          Text(
            "valeur $cpt",
            style: TextStyle(color: Colors.red),
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
                }
              })
            },
          ),
        ],
      ),
    );
  }
}
