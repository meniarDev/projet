import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<Icon> icons = [
    Icon(Icons.star, size: 100, color: Colors.red),
    Icon(Icons.favorite, size: 100, color: Colors.yellow),
    Icon(Icons.star, size: 100, color: Colors.blue),
  ];

  int currentIndex = 0;

  void changeIcon() {
    setState(() {
      currentIndex = (currentIndex + 1) % icons.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: Text('Change Icon'),
            onPressed: changeIcon,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
          ),
          SizedBox(
            width: 20.0,
            height: 40.0,
          ),
          icons[currentIndex],
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Change Icon Example')),
      body: MyWidget(),
    ),
  ));
}
