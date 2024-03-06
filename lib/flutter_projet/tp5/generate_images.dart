import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RandomImages());
  }
}

class RandomImages extends StatefulWidget {
  const RandomImages({super.key});

  @override
  State<RandomImages> createState() => _RandomImagesState();
}

class _RandomImagesState extends State<RandomImages> {
  @override
  Widget build(BuildContext context) {
    int taille = 200;
    String src = "https://picsum.photos/200";
    List<String> images = ["space1.jpg", "space2.jpg", "space3.jpg"];
    String imageName = "space1.jpg";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Images"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Column(
            children: [
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          taille = Random().nextInt(300);
                          src = "https://picsum.photos/$taille";
                        })
                      },
                  child: const Text("click")),
              Container(
                height: 100,
                width: 100,
                child: Image.network(src),
              )
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          imageName = images[Random().nextInt(images.length)];
                        })
                      },
                  child: Text(imageName)),
              Container(
                height: 100,
                width: 100,
                child: Image.asset("assets/images/$imageName"),
              )
            ],
          )
        ],
      ),
    );
  }
}
