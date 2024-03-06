import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int compteur = 0;
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
                    setState(() {
                      compteur += 1;
                    });
                    
                    
                  })),
          Container(
              child: Text(
            "nbr de click =$compteur fois",
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
                  setState(() {
                     compteur -= 1;
                  });
                },
              )),
        ],
      ),
    );
  }
}
