
import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget {

  const Assignment6({super.key});
  @override
  State<StatefulWidget> createState() {

    return _Assignment6State();
  }
}

class _Assignment6State extends State<Assignment6> {

  int _count = -1;

  void _increamentCount() {

    setState(() {
      _count++;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 6-Statefull"
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _increamentCount();
          });
        },
        child: const Icon(Icons.add)
      ),
      body: (_count >= 0) ?Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                (_count >= 1) ?
                  Container(
                    height: 400,
                    width: 20,
                    color: Colors.brown
                  )
                  : Container(),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                (_count >= 2) ?
                  Container(
                    height:40,
                    width: 180,
                    color: Colors.orange,
                  )
                  : Container(),

                (_count >= 3) ?  
                  Container(
                    height:40,
                    width: 180,
                    color: Colors.white,
                    child: (_count >= 4) ?
                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/800px-Ashoka_Chakra.svg.png"
                              )
                              : Container(),
                  ) :
                  Container(),
                
                (_count >= 5) ?
                  Container(
                    height:40,
                    width: 180,
                    color: Colors.green,
                  )
                  : Container(),
              ],
            )
          ],
        ),
      )
      :Container(),
    );
  }
}