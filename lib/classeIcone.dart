import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Icon c = Icon(Icons.star, size: 100, color: Colors.red);
  Icon b = Icon(Icons.favorite, size: 100, color: Colors.red);
  Icon d = Icon(Icons.star, size: 100, color: Colors.red);

  void updateIcon() {
    if (d != c) {
      setState(() {
        d = c;
      });
    } else {
      setState(() {
        d = b;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: Text('Button'),
            onPressed: () {
              updateIcon();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
          ),
          SizedBox(
            width: 20.0,
            height: 40.0,
          ),
          d,
        ],
      ),
    );
  }
}
