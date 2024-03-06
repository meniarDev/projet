import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    title: "ex4",
    home: Scaffold(
      appBar: AppBar( title:Text('exercice 6')),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[600],
            child: const Text("item0"),
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: 50,
            ),

          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[600],
            child: const Text('item1'),
            alignment: Alignment.center,

            constraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: 50,
            ),
            
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[600],
            child: const Text('item2'),
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: 50,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[600],
            child: const Text('item3'),
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: 50,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[600],
            child: const Text('item4'),
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: 50,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[600],
            child: const Text('item5'),
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: 50,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[600],
            child: const Text('item6'),
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: 50,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue[600],
            child: const Text('item7'),
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxHeight: 10,
              maxWidth: 10,
            ),
          ),
        ],
      ),
    ),
  );

  runApp(myApp);
}
