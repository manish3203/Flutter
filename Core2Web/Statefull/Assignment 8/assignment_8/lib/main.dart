import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: Toggle()
    );
  }
}

class Toggle extends StatefulWidget {
   const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {

  int box1Color = 0;
  int box2Color = 0;

  Color box1ColorChange() {

    if(box1Color == 1) {

      return Colors.red;
    }else if(box1Color == 2) {

      return Colors.green;
    }else if(box1Color == 3) {

      return Colors.blue;
    }else {

      return Colors.black;
    }
  }
  Color box2ColorChange() {

    if(box2Color == 1) {

      return Colors.red;
    }else if(box2Color == 2) {

      return Colors.green;
    }else if(box2Color == 3) {

      return Colors.blue;
    }else {

      return Colors.black;
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "toggle app"
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: box1ColorChange()
              ),
              const SizedBox(
                height: 10
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    
                    if(box1Color > 3) {

                      box1Color = 0;
                    }else {

                      box1Color++;
                    }
                  });
                }, 
                child: const Text(
                  "Button 1"
                )
              )
            ],
          ),
          const SizedBox(
            width: 20
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: box2ColorChange()
              ),
              const SizedBox(
                height: 10
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    
                    if(box2Color > 3) {

                      box2Color = 0;
                    }else {

                      box2Color++;
                    }
                  });
                }, 
                child: const Text(
                  "Button 2"
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
      
