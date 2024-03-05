
import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key});

  @override
  State<LifeCycle> createState() {
      print("create State call");
      return _LifeCycleState();
  }
}

class _LifeCycleState extends State<LifeCycle> {

  @override
  void didUpdateWidget(LifeCycle oldWidget) {
    
    print("didUpdateWidget call");
    super.didUpdateWidget(oldWidget);
  }
  @override
  void didChangeDependencies() {

    print("DidChangeDependencies call");
    super.didChangeDependencies();
  }
  @override
  void initState() {

    print("call initState");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("build state");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            print("setState call through floating button");
          });
        },
        child: const Text("Next"),
      ),
    );
  }
}