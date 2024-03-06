import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Exercice 6'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        children: List.generate(8, (index) {
          return GridTile(
            child: Container(
              color: Colors.blue, // Change the color as needed
              child: Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    ),
  );

  runApp(myApp);
}
