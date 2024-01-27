/*

In the screen, show 3 asset images of size (width: 150, height: 150).

*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment5(),
    );
  }
}
class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Image.asset(
            "assets/car-3357296_1280.jpg",
            width: 150,
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/ferrari-3090880_1280.jpg",
            width: 150,
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/porsche-4795517_1280.jpg",
            width: 150,
            height: 150,
          ),
        ],
      ),
     
    );
  }
}