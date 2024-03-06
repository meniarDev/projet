import 'package:flutter/material.dart';
void main() {
  var app = MaterialApp(
    title: "App",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("votre prénom et nom"),
        leading: const Icon(Icons.alarm),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child:const  Icon(Icons.thumb_up , size: 32,),
              onTap: () => print("like"),
            ),
            const Padding(padding: EdgeInsets.only(left: 10)),
            const Text("0" , style: TextStyle(color: Colors.red),),
            const Padding(padding: EdgeInsets.only(right: 10)),
            InkWell(
              child:const  Icon(Icons.thumb_down , color: Colors.red, size: 32,),
              onTap: () => print("dislike"),
            ),
          ],
        ),
      ),
    ),
  );
  runApp(app);
}

