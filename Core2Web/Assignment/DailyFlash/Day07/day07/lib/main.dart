import 'package:day07/Screens/assignment1.dart';
import 'package:day07/Screens/assignment2.dart';
import 'package:day07/Screens/assignment3.dart';
import 'package:day07/Screens/assignment4.dart';
import 'package:day07/Screens/assignment5.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment5(),
    );
  }
}