
/*
  4. Create a screen and try to replicate the below image.
*/

import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 200,
          width: 500,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 130,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                  height: 60,
                  width: 120,
                  color: Colors.red,
                ),
              ),
              Container(
                height: 130,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                  height: 60,
                  width: 120,
                  color: Colors.purple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}