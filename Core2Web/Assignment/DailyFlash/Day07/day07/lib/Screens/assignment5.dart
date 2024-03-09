/*
  5. In the above question now take 3 rows, the first row must be the same. In
     2nd Row place 3 Containers the space taken by them must be in a ratio of
     5:4:1 and The 3 containers in last row must take space in a ratio of 7:2:1.
     Each Container must have a height of 100 and must have a color of your
     choice. Do not specify the width of the container.
*/

import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  height: 100,
                  color: Colors.red,
                )
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 100,
                  color: Colors.purple,
                )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.green,
                )
              )
            ],
          ),
          const SizedBox(height: 10),
           Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: 100,
                  color: Colors.red,
                )
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 100,
                  color: Colors.purple,
                )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.green,
                )
              )
            ],
          ),
          const SizedBox(height: 10),
           Row(
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  height: 100,
                  color: Colors.red,
                )
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Colors.purple,
                )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.green,
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}