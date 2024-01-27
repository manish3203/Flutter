
import 'package:flutter/material.dart';

class assignment2 extends StatelessWidget {
  
  const assignment2({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(

        title: const Text("Assignment 2"),
      ),
      body: SizedBox(

        height: double.infinity,
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Container(

              height: 100,
              width: 100,
              color: Colors.orange,
            ),
            Container(

              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(

              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }


}