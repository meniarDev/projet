import 'dart:math';
import 'package:flutter/material.dart';

class Ex3 extends StatefulWidget {
  const Ex3({Key? key}) : super(key: key);

  @override
  State<Ex3> createState() => _Ex3State();
}

class _Ex3State extends State<Ex3> {
  List<Icon> mesIcons = [
    Icon(Icons.alarm_add),
    Icon(Icons.add_box),
    Icon(Icons.abc_sharp),
  ];

  Icon i = Icon(Icons.abc_sharp);

  Icon generer_icon_aleatoire() {
    setState(() {
      i = mesIcons[Random().nextInt(mesIcons.length)];
    });
    return i;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              generer_icon_aleatoire();
            },
            label: Text("+"),
          ),
          SizedBox(
            width: 500,
            height: 500,
            child: i, // Use the generated icon here
          ),
        ],
      ),
    );
  }
}