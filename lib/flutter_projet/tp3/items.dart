import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "App",
    home: Scaffold(
        appBar: AppBar(
          title: const Text("votre prénom et nom"),
          leading: const Icon(Icons.alarm),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(8, (index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child:
                    Text("${index + 1}", style: TextStyle(color: Colors.white)),
              ),
            );
          }),
        )),
  );
  runApp(app);
}
