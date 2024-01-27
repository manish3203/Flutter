import 'package:assignment_2/test_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      home: Assignment2(),
    );
  }

}