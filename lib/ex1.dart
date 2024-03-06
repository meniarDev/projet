import 'package:flutter/material.dart';
void main(){
var myApp=(MaterialApp(
  title: "ex1",
    home: Scaffold(
      appBar: AppBar(
        title: Text('ex1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
           creeButton("button 1"),
           creeIcon(),
            
          
            // // Icon(
            //   Icons.ac_unit,
            //   size: 50,
            //   color: Colors.blue,
            // ),
           
            SizedBox(
              child:  creeButton("button 2 "),
              width: 100,
              height: 100,
              
            ),
         SizedBox(height: 10,),
            // Add spacing
 creeButton("very long buttton "),
],        ),
      ),
    ),
  ));
  runApp(myApp);
}
 
Widget creeIcon(){
  return Icon(Icons.ac_unit,size: 58.0,color: Colors.blue,);
}
Widget creeButton(String msg){
  return ElevatedButton(onPressed: (){print("click sur le bouton");}, child:Text(msg));
}
