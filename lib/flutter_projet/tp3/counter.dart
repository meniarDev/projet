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
            ElevatedButton(
              onPressed: () => {},
              child: Container(
                  width: 60,
                  height: 50,
                  color: Colors.blue,
                  child: const Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  )),
            ),
            Container(
                width: 70,
                height: 70,
                alignment: Alignment.center,
                child: const Text(
                  "0",
                  style: TextStyle(fontSize: 40, color: Colors.red),
                )),
            ElevatedButton(
              onPressed: () => {},
              child: Container(
                  width: 60,
                  height: 50,
                  color: Colors.blue,
                  child:
                      const Icon(Icons.remove, size: 40, color: Colors.white)),
            ),
          ],
        ),
      ),
    ),
  );
  runApp(app);
}

/*Widget btn(double wdth, double ht, Color clr, Icon ic,
    double sz, Color iconColor) {
  return ElevatedButton(
      onPressed: () => print("clicked"),
      child: Container(
        width: wdth,
        height: ht,
        color: clr,
        child: const Icon(ic  , sz, iconColor),
      ));
}*/
