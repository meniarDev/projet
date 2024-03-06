import 'package:flutter/material.dart';
void main(){
var myapp=MaterialApp(
  title: "ex3",
  home: Scaffold(appBar: AppBar(title: Text('Myapplication01' ,),
  ),
  body: Column(
    children: [
      Expanded(
        flex: 1,
        child: Row(
          children: <Widget>[
           Expanded(
            flex:1,
            child:  Container(
              alignment: Alignment.center,
 color:  Colors.red,
child: Text("1",style: TextStyle(
                          color: Colors.white, // Couleur du texte en blanc
                          fontWeight: FontWeight.bold,),),
      ),
      ),
            Expanded(flex: 1,
              child:  Container(
              alignment: Alignment.center,
 color: Colors.orange,
child: Text("2",style: TextStyle(
                          color: Colors.white, // Couleur du texte en blanc
                          fontWeight: FontWeight.bold,),),
      ),
      ),
          ],
        ),
      ),
  Expanded(
        flex: 2,
        child: Row(
          children: <Widget>[
           Expanded(
            flex:1,
            child:  Container(
              alignment: Alignment.center,
 color:  Colors.green,
child: Text("3",style: TextStyle(
                          color: Colors.white, // Couleur du texte en blanc
                          fontWeight: FontWeight.bold,),),
      ),),

              Expanded(
            flex:2,
            child:  Column(
              children: [
                Expanded(
                  flex:1,
                  child: Row(
                    children: [
                      Expanded(
                      flex: 1,
                    child:Container( child:Text("4",style: TextStyle(
                          color: Colors.white, // Couleur du texte en blanc
                          fontWeight: FontWeight.bold,),),
                   color:  Colors.purple,  
               alignment: Alignment.center,
                    ),
                    ),
                               Expanded(
            flex:1,
            child:  Container(
              alignment: Alignment.center,
 color:  Colors.orange,
child: Text("5",style: TextStyle(
                          color: Colors.white, // Couleur du texte en blanc
                          fontWeight: FontWeight.bold,),),
      ),
      ),
                    
                    ],
                  )
                  ),          
                Expanded(
                  flex:1,
                  child: Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text("6",style: TextStyle(
                          color: Colors.white, // Couleur du texte en blanc
                          fontWeight: FontWeight.bold,),),
                    ),
                    ),
              ],
            ),
      ),
      ],
      ),
      ),       
    ],
  ),

  

  ),
);
runApp(myapp);}