/*
  4. Create a Screen in which we have 3 containers placed in a Row, the space
     taken by the containers must be in proportion 6:3:1. The container must
     have a height of 100 don’t give width to the Container.
*/

import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State createState() => _Assignment4State();
}

class _Assignment4State extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
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
      ),
    );
  }
}