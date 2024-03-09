/*
  3. Create a Screen with two horizontally aligned containers at the center of the
     screen. Apply a shadow to each container set individual colors and give a border
     to the Containers only the bottom edges of the container must be rounded.
*/

import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State createState() => _Assignment3State();
}

class _Assignment3State extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 3.0,
                    offset: Offset(1, 3),
                    spreadRadius: 9.0
                  )
                ]
              ),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 3.0,
                    offset: Offset(1, 3),
                    spreadRadius: 9.0
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}