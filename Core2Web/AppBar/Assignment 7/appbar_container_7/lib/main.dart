/*

Create a screen in which add 5 network images horizontally with size
(width: 150, height: 300) and make scrollable.

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
      home:Assignment7(),
    );
  }
}
class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.network(
              "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
              width: 300,
              height: 300
            ),
            const SizedBox(
              width: 10,
            ),
            Image.network(
              "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
              width: 300,
              height: 300
            ),
            const SizedBox(
              width: 10,
            ),
            Image.network(
              "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
              width: 300,
              height: 300
            ),
            const SizedBox(
              width: 10,
            ),
            Image.network(
              "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
              width: 300,
              height: 300
            ),
            const SizedBox(
              width: 10,
            ),
            Image.network(
              "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
              width: 300,
              height: 300
            ),
          ],
        ),
      ),
    );
  }
}