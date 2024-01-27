/*

Create a screen with a deep purple app bar titled "Hello Core2web" and in the
centre of the body create a blue container with (width: 360, height: 200).

*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment3(),
    );
  }
}
class Assignment3 extends StatelessWidget {

  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple, 
        title: const Text(
            "Hello Core2web",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      body: Center(
        child: Container(
          width: 360,
          height: 200,
          color: Colors.blue,
        ),
      ),
    );
  }
}