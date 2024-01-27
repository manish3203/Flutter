/*

In the screen, add a container with size (width: 300,height:300). Give
colour to the container. Make container’s top-left and bottom-right
corners rounded with radius 20.

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
      home: Assignment10(),
    );
  }
}
class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(

            border: Border.all(

              color: Colors.red,
              width: 3.0
            ),
            borderRadius:const BorderRadiusDirectional.only(topStart: Radius.circular(20), bottomEnd: Radius.circular(20))
          ),
        ),
      ),
    );
  }
}