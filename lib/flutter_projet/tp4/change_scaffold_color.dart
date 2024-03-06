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
  Color clr1 = Colors.green;
  Color clr2 = const Color.fromARGB(255, 247, 102, 92);
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
                    scaffoldColor = clr1;
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
                      scaffoldColor = clr2;
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
