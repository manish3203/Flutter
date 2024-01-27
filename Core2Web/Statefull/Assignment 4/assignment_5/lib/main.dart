
import 'package:assignment_5/test_app.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(

      home: Assignment5(),
      debugShowCheckedModeBanner: false,
    );
  }
}