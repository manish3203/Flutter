
import 'package:flutter/material.dart';
import 'Screens/assignment1.dart';
import 'Screens/assignment2.dart';
import 'Screens/assignment3.dart';
import 'Screens/assignment4.dart';
import 'Screens/assignment5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home:Assignment5()
    );
  }
}
