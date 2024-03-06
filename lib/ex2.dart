import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text("exercices 3"),
    ),
    body: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      ElevatedButton(child: const Text("Btton1"), onPressed: () {}),
      ElevatedButton(child: const Text("Btton1"), onPressed: () {}),
      const Icon(Icons.ac_unit, size: 48, color: Colors.red),
      SizedBox(
        height: 80,
        child: ElevatedButton(
          child: Text("button2"),
          onPressed: () {},
        ),
      ),
      const Icon(Icons.add_circle, size: 48, color: Colors.green),
      ElevatedButton(child: const Text("Btton3"), onPressed: () {}),
    ]),
  ));
  return (runApp(app));
}