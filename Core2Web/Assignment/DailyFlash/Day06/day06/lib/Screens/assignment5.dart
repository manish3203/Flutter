/*
  5. Create a Screen in which we have 3 Containers with size:
    (height:100,width:200) placed vertically. Each container must have a
    black border. Initially, the Color of the Containers must be white. The
    container that is tapped must change its color to red and other containers
    must be white.
*/

import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  int tappedIndex = -1;

  Color colorCheck(int index) {
    return index == tappedIndex ? Colors.red : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  tappedIndex = 0;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: colorCheck(0),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  tappedIndex = 1;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: colorCheck(1),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  tappedIndex = 2;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: colorCheck(2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


