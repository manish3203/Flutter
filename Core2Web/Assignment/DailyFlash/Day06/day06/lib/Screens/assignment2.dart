/*
  2. Create a screen that displays a container. The container must display an image.
     Give a circular border only at the bottom of the container. Below the container
     display the button with size:(width:250, height:70). The button must display
     “Add to cart”. The color of the button must be purple. Both the container and
     button must be in the center of the screen.
*/

import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              width: 110,
              height: 70,
              decoration: const BoxDecoration(
                //border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
              ),
              child: Image.asset(
                "assets/pizza.jpg",height: 70,width: 350,
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: (){}, 
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple)
              ),
              child: const Text("Add to cart",style: TextStyle(color: Colors.white),)
            )
          ]
        ),
      ),
    );
  }
}