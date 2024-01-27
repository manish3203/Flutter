/*

In the screen, add a container with size (width: 300,height:300). Also, add
a border to that Container, the border must be of color red.

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
      home: Assignment8(),
    );
  }
}
class Assignment8 extends StatelessWidget {
  const Assignment8({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(

            border: Border.all(

              color: Colors.red,
              width: 3.0
            ),
          ),
        ),
      ),
    );
  }
}