import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "ex3",
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "application01",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body:  Row(
        children: [
          Expanded(
            flex: 2,
            child: Container( height: 100,
              color: Colors.red,
              child: const Text(
                "1",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ), Expanded(
            flex: 1,
            child: Container( height: 100,
              color: Colors.orange,
              child: const Text(
                "2",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ],



      ),
    ),
  );

  runApp(app);
}
