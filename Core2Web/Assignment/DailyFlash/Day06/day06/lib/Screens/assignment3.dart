/*
  3. Refer to the below image and try to replicate it:
*/

import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily Flash"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 80,
                width: 110,
                color: Colors.red,
              ),
              Container(
                height: 80,
                width: 110,
                color: Colors.purple,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 80,
                width: 110,
                color: Colors.amber,
              ),
              Container(
                height: 80,
                width: 110,
                color: Colors.green,
              )
            ],
          )
        ],
      ),
    );
  }
}