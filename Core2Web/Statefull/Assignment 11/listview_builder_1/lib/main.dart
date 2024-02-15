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

  List<int> imageList = [];
  int count = 0;
  
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
          int temp = imageList[index];
          return Container(
            margin: const EdgeInsets.all(10),
            color: Colors.blue,
            width: double.infinity,
            height: 50,
            child: Text("$temp")
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            imageList.add(count);
            count++;
          });
        },
        child: const Text("+1"),
      ),
    );
  }
}