import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: PaddingMargin(),
    );
  }
}
class PaddingMargin extends StatelessWidget {
  const PaddingMargin({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Padding & Margin"
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(20),
            child: Image.network(
              "https://stimg.cardekho.com/images/carexteriorimages/630x420/Lamborghini/Revuelto/9770/1680237730530/front-left-side-47.jpg"
            ),
          ),
        ),
      ),
    );
  }
}