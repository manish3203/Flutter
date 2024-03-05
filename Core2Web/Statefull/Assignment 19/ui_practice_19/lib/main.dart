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
      home: Home()
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override 
  State createState() => _HomeState();
}

class _HomeState extends State {

  @override
  Widget build(BuildContext context) {

    return Scaffold (

      body: Center(
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromRGBO(255, 140, 30, 1),
            border: Border.all(
              width: 2,
              color: Colors.black,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.deepOrange,
                offset: Offset(-10, -10),
                //spreadRadius: 30.0,
                blurRadius: 40.0
              ),
            ],
          ),
        ),
      ),
    );
  }
}