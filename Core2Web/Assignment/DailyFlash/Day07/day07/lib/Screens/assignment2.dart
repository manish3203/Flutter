/*

  2. Create a Screen that displays an `Icon` widget representing a star the size of the
     icon must be 40 and the color of the icon must be orange, beside the icon place a
     `Text` widget with the content "Rating: 4.5". Apply a font size of 25 and bold
     weight to the text. Refer to below image.
*/

import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State createState() => _Assignment2State();
}

class _Assignment2State extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Daily Flash",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 60,
          width: 240,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(20))
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star,color: Colors.orange,size: 40),
              SizedBox(width: 20,),
              Text(
                "Rating:4.5",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}