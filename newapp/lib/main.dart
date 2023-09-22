// ignore_for_file: unnecessary_import, unused_import, avoid_print

import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/container.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 93, 0, 255),
          leading: const BackButton(),
          title: const Center(
            child: Text("AnimeWallpaper"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                print("onAction");
              },
              child: const Text(
                "List",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        body: Container(
          width: 1000,
          height: 1000,
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 1, 249, 236)),
              child: const Center(
                  child: Icon(
                Icons.heart_broken,
                color: Colors.pink,
                size: 77.0,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
