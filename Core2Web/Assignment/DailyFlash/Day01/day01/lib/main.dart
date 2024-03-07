
import 'package:day01/Screens/Assignment1.dart';
import 'package:day01/Screens/Assignment2.dart';
import 'package:day01/Screens/Assignment3.dart';
import 'package:day01/Screens/Assignment4.dart';
import 'package:day01/Screens/Assignment5.dart';
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
      home:Assignment5()
    );
  }
}
