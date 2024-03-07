import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("iCoder"),
          centerTitle: true,
          actions: const [
            Icon(Icons.search),
            Icon(Icons.person),
            Icon(Icons.window_rounded),
          ],
    ));
  }
}
