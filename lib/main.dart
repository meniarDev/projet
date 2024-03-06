import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ex2",
      home: Scaffold(
        appBar: AppBar(
          title: Text('ex2'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: Text("B1"),
              onPressed: () {},
            ),
            Column(
              children: [
                ElevatedButton(
                  child: Text("B1"),
                  onPressed: () {},
                ),
                Icon(
                  Icons.ac_unit,
                  size: 28,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 80,
                  child: ElevatedButton(
                    child: Text("B2"),
                    onPressed: () {},
                  ),
                ),
                Icon(
                  Icons.add_circle,
                  size: 60,
                  color: Colors.green,
                ),
              ],
            ),
            ElevatedButton(
              child: Text("Btn3"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
