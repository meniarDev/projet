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

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
            onTap: () => {},
          ),
          const Padding(padding: EdgeInsets.only(left: 10)),
          const Text(
            "0",
            style: TextStyle(color: Colors.red),
          ),
          const Padding(padding: EdgeInsets.only(right: 10)),
          InkWell(
            child: const Icon(
              Icons.thumb_down,
              color: Colors.red,
              size: 32,
            ),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}