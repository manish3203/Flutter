import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            context: context,
            isScrollControlled: true, 
            builder: (context) {

              return Container(
                height: 363,
                width: 360,
                padding: const EdgeInsets.all(10),  
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Create Task",
                          style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w800)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Title",
                          style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(0, 139, 148, 1)))),
                      SizedBox(
                        width: 330,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(0, 139, 148, 1)),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Description",
                          style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(0, 139, 148, 1)))),
                      SizedBox(
                        width: 330,
                        height: 100,
                        child: TextField(
                          maxLines: 4,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(0, 139, 148, 1)),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Date",
                          style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(0, 139, 148, 1)))),
                      SizedBox(
                        width: 330,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(0, 139, 148, 1)),
                                  borderRadius: BorderRadius.circular(10)
                                  ),
                              suffixIcon: const Icon(Icons.date_range_outlined,color: Color.fromRGBO(0, 0, 0, 0.7),)
                          ),
                          
                        ),
                      ),
                                
                      const SizedBox(height: 20,),
                                
                      Center(
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                  foregroundColor: MaterialStatePropertyAll(Color.fromRGBO(255, 255, 255, 1)),
                                fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                                backgroundColor:  MaterialStatePropertyAll( Color.fromRGBO(0, 139, 148, 1))
                            ),
                            onPressed: (){
                              setState(() {
                                
                              });
                            }, 
                            child: const Text("Submit")
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
