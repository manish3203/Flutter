/*

Create an AppBar, give an Icon at the end of the app bar, and give a title in
the middle of the appbar.

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        
        title: const Center(
          child: Text(
            "Instagram",
            style: TextStyle(
              color: Colors.white
            ),
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