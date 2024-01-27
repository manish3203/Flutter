/*

Create a screen in which add 10 colourful containers vertically and make
the screen scrollable.

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
      home: Assignment6(),
    );
  }
}
class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue.shade100,
              width: double.infinity,
              height: 200,
            ),
            Container(
              color: Colors.blue.shade200,
              width: double.infinity,
              height: 200,
            ),
            Container(
              color: Colors.blue.shade300,
              width: double.infinity,
              height: 200,
            ),
            Container(
              color: Colors.blue.shade400,
              width: double.infinity,
              height: 200,
            ),
            Container(
              color: Colors.blue.shade500,
              width: double.infinity,
              height: 200,
            ),
            Container(
              color: Colors.blue.shade600,
              width: double.infinity,
              height: 200,
            ),
            Container(
              color: Colors.blue.shade700,
              width: double.infinity,
              height: 200,
            ),
            Container(
              color: Colors.blue.shade800,
             width: double.infinity,
              height: 200,
            ),
            Container(
              color: Colors.blue.shade900,
              width: double.infinity,
              height: 200,
            ),
            Container(
              color: Colors.blue.shade50,
              width: double.infinity,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}