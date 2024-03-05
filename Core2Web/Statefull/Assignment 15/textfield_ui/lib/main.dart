
import 'package:flutter/material.dart';
import 'package:textfield_ui/textfield_info.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title:'Add Name'),
    );
  }
}

