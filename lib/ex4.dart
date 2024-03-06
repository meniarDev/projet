import 'package:flutter/material.dart';

void main() {
  var myapp = MaterialApp(
    title: "ex4",
    home: Scaffold(
      appBar: AppBar(
        title: Text("votre prenom et nom "),
        leading:  Icon(Icons.access_alarm),
      ),
   body: Center( child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container( margin: EdgeInsets.fromLTRB(0, 0, 20, 0),height: 50, width:100,child: ElevatedButton(child: const Text("+"), onPressed: () {})),
      Container( child: Text("0",style: TextStyle(color: Colors.red, fontSize:50),)),
      Container(  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),width:100 ,height: 50,child: ElevatedButton(child: const Text("-"), onPressed: () {} , )),],),),),);
     return runApp(myapp);
}
