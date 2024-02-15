import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: DisplayImages()
    );
  }
}
class DisplayImages extends StatefulWidget {

  const DisplayImages({super.key});

  @override
  State createState() => _DisplayImagesState();
}

class _DisplayImagesState extends State<DisplayImages> {

  List<String> imageList = [

    "https://cdn.pixabay.com/photo/2024/01/18/19/23/mountain-8517546_1280.jpg",
    "https://cdn.pixabay.com/photo/2023/08/18/16/19/bridge-8198882_1280.jpg",
    "https://cdn.pixabay.com/photo/2024/01/29/20/33/river-8540767_1280.jpg"     
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "ListView_Builder"
        ),
      ),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(
              imageList[index]
            ),
          );
        }
      ),
    );
  }
}