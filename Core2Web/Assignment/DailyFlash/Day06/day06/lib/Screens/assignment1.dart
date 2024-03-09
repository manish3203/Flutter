/*

  1.Create a screen that displays an asset image of the food item at the top of the
    Screen, below the image, display the name of the food item and below the name
    give the description of the item. Add appropriate padding.
*/

import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.only(top: 10,left: 10),
                  child: Text(
                    "Daily Flash",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Image.asset(
                "assets/pizza.jpg"
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pizza",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "A large circle of flat bread baked with cheese, tomatoes, and vegetables spread on top",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}