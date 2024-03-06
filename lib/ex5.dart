import 'package:flutter/material.dart';
void main(){
var myApp=(MaterialApp(
  title: "ex5",
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lahwaya minyar '),
          leading:   Icon(Icons.thumbs_up_down),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //IconButton(icon:const Icon(Icons.thumb_up,size: 58.0,color: Colors.blue,),onPressed: () {
             //  },),
     InkWell(child:Icon(Icons.thumb_up,size: 58.0,color: Colors.blue),onTap:() {},),
         Padding(padding: EdgeInsets.only(left: 16.0)),
           
      
          Text(
                '0',
                style: TextStyle(
                  color: Color.fromARGB(255, 41, 222, 207),
                  fontSize: 58,
                  
                ),
              ),
           
         Padding(padding: EdgeInsets.only(right: 8.0)),
     InkWell(child:Icon(Icons.thumb_down,size: 58.0,color: Colors.red),onTap:() {},),
//  IconButton(icon:const Icon(Icons.thumb_down,size: 58.0,color: Colors.red,),onPressed: () {
           //    },),
],        ),
      ),
    ),
  ));
  runApp(myApp);
}