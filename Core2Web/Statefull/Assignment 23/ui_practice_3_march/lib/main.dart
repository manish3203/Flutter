import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practice_3_march/course_1.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AssignUI(),
    );
  }
}

class AssignUI extends StatefulWidget {
  const AssignUI({super.key});

  @override
  State createState() => _AssignUIState();
}

class _AssignUIState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 239, 239, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:EdgeInsets.only(
              top: 47,
              left: 20,
              right: 20
            ),
            child: Row(
              children:[
                Icon(Icons.menu),
                Spacer(),
                Icon(Icons.notifications_on_outlined)
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome To New",
                  style: GoogleFonts.jost(
                    fontWeight:FontWeight.w300,
                    fontSize:26.98,
                    color:const Color.fromRGBO(0, 0, 0, 1)
                  ),
                ),
                Text(
                  "Educourse",
                  style: GoogleFonts.jost(
                    fontWeight:FontWeight.w700,
                    fontSize:37,
                    color:const Color.fromRGBO(0, 0, 0, 1)
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    filled: true,
                    hintText: "Enter your Keyword",
                    hintStyle: GoogleFonts.inter(
                      fontWeight:FontWeight.w400,
                      fontSize:14,
                      color:const Color.fromRGBO(143, 143, 143, 1),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(28.5))
                    ),
                    suffixIcon: const Icon(Icons.search)
                    
                  ),
                ),
                const SizedBox(height: 30),
              ],
            )
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Course For You",
                        style: GoogleFonts.jost(
                          fontWeight:FontWeight.w500,
                          fontSize:18,
                          color:const Color.fromRGBO(0, 0, 0, 1)
                        ),
                      ),
                      const SizedBox(height:20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const UIPractice()));
                              },
                              child: Container(
                                height: 242,
                                width: 190,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(14)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(197, 4, 98, 1),
                                      Color.fromRGBO(80, 3, 112, 1)
                                    ]
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "UX Designer from Scratch.",
                                        style: GoogleFonts.jost(
                                          fontWeight:FontWeight.w500,
                                          fontSize:17,
                                          color:const Color.fromRGBO(255, 255, 255, 1)
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/7010826_3255307.png",
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              height: 242,
                              width: 190,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(14)),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(0, 77, 228, 1),
                                    Color.fromRGBO(1, 47, 135, 1)
                                  ]
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Design Thinking The Beginner",
                                      style: GoogleFonts.jost(
                                        fontWeight:FontWeight.w500,
                                        fontSize:17,
                                        color:const Color.fromRGBO(255, 255, 255, 1)
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/Objects.png",height: 136.8,width: 133.86,
                                    ),
                                    const SizedBox(height: 15),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Course By Category",
                        style: GoogleFonts.jost(
                          fontWeight:FontWeight.w500,
                          fontSize:18,
                          color:const Color.fromRGBO(0, 0, 0, 1)
                        ),
                      ),
                      const SizedBox(height: 30),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: Color.fromRGBO(25, 0, 56, 1)
                                ),
                                child: Image.asset(
                                  "assets/Traced Image1.png"
                                ),
                              ),
                              Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: Color.fromRGBO(25, 0, 56, 1)
                                ),
                                child: Image.asset(
                                  "assets/Traced Image2.png"
                                ),
                              ),
                              Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: Color.fromRGBO(25, 0, 56, 1)
                                ),
                                child: Image.asset(
                                  "assets/Traced Image3.png"
                                ),
                              ),
                              Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: Color.fromRGBO(25, 0, 56, 1)
                                ),
                                child: Image.asset(
                                  "assets/Traced Image4.png"
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(),
                              Text(
                                "UI/UX",
                                style: GoogleFonts.jost(
                                  fontWeight:FontWeight.w400,
                                  fontSize:14,
                                  color:const Color.fromRGBO(0, 0, 0, 1)
                                ),
                              ),
                              Text(
                                "VISUAL",
                                style: GoogleFonts.jost(
                                  fontWeight:FontWeight.w400,
                                  fontSize:14,
                                  color:const Color.fromRGBO(0, 0, 0, 1)
                                ),
                              ),
                              Text(
                                "ILLUSTRATON",
                                style: GoogleFonts.jost(
                                  fontWeight:FontWeight.w400,
                                  fontSize:14,
                                  color:const Color.fromRGBO(0, 0, 0, 1)
                                ),
                              ),
                              Text(
                                "PHOTO",
                                style: GoogleFonts.jost(
                                  fontWeight:FontWeight.w400,
                                  fontSize:14,
                                  color:const Color.fromRGBO(0, 0, 0, 1)
                                ),
                              ),
                              const SizedBox()
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}