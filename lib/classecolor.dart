import 'dart:math';

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
Color c= Colors.black;
    Color generer_coleur_aleatoier()
    {
       Color c= Colors.black;

       setState((){

      c=Color.fromARGB(Random().nextInt(255),Random().nextInt(255),Random().nextInt(255),Random().nextInt(255));


       });

        return c;

    }
    




  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
                  child: Text('Button'),
                  onPressed: () {
                    c= generer_coleur_aleatoier();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
    ), SizedBox(
       width: 20.0,  height: 40.0, ),
    
     Container( padding: const EdgeInsets.all(8),width:50,height: 50, child:Text(""),color:c)
        ],
      ),
    );


     



  }
}