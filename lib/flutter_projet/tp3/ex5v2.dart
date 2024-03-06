import 'package:flutter/material.dart';

void main() {
  var x = MaterialApp(
      title: 'My first App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                      color: Colors.red,
                      height: 100.0,
                      width: 200.0,
                      alignment: Alignment.center,
                      child: const Text(
                        "1",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )),
                  Container(
                      color: Colors.yellow,
                      height: 100.0,
                      width: 100.0,
                      alignment: Alignment.center,
                      child: const Text("2",
                          style: TextStyle(fontSize: 25, color: Colors.white)))
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 200.0,
                    width: 100.0,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: const Text("3",
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              color: Colors.purple,
                              height: 100.0,
                              width: 100.0,
                              alignment: Alignment.center,
                              child: const Text("4",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white))),
                          Container(
                              color: Colors.yellow,
                              height: 100.0,
                              width: 100.0,
                              alignment: Alignment.center,
                              child: const Text("5",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white))),
                        ],
                      ),
                      Container(
                          color: Colors.blue,
                          height: 100.0,
                          width: 200.0,
                          alignment: Alignment.center,
                          child: const Text("6",
                              style: TextStyle(
                                  fontSize: 25, color: Colors.white))),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ));
  runApp(x);
}
