

import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 163, 163, 163),
                leading: const Icon(Icons.home),
                actions: const [
                    Icon(Icons.search),
                    Icon(Icons.person),
                    Icon(Icons.window_rounded),
                ],
            ),
        );
  }
    
}