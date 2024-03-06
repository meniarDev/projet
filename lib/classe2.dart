import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              height: 50,
              width: 100,
              child: ElevatedButton(
                  child: const Text("+"),
                  onPressed: () {
                    print('click b1');   
                  })),
          Container(
              child: Text(
            "nbr de click fois",
            style: TextStyle(color: Colors.red, fontSize: 50),
          )),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              width: 100,
              height: 50,
              child: ElevatedButton(
                child: const Text("-"),
                onPressed: () {
                  print('click b2');
                  
                },
              )),
        ],
      ),
    );
  }
}