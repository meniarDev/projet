import 'package:flutter/material.dart';

void main(){
  var x = MaterialApp(
    title: 'My first App',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            btn('button 1', 14, Colors.red),
            SizedBox( height: 90 , width:80, 
            child : btn('button 2', 18, Colors.black)),
            const Icon(Icons.add_sharp , size: 25 , color : Colors.red ),
            SizedBox(height:40 , width:120, child: btn('button 3', 16, Colors.white)),
        ],),
      ) 
      )
    );
  runApp(x);
}
Widget monText(String msg , double taille , Color couleur){
  return Text(
    msg,
    style: TextStyle(fontSize: taille , color: couleur),
  );
}
Widget btn(String msg , double taille , Color couleur){
  return ElevatedButton(
    onPressed: () {print('clicked');}, 
    child: monText(msg, taille, couleur)
    );
}