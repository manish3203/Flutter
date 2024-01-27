/*

Create an AppBar, add a title and add any 2 icons at the end of the appbar
and give color to the AppBar.

*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment2(),
    );
  }
}
class Assignment2 extends StatelessWidget {

  const Assignment2({super.key});

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
          title: const Text(
            "Instagram",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.notifications,
              )
            ),
            IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.report,
              )
            ),
        ],
      ),
    );
  }
}