

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UIPractice(),
    );
  }
}

class UIPractice extends StatefulWidget {
  const UIPractice({super.key});

  @override
  State createState() => _UIPracticeState();
}

class _UIPracticeState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors:[
              Color.fromRGBO(197, 4, 98, 1),
              Color.fromRGBO(80, 3, 112, 1)
            ]
          )
        ),
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 38, top: 79, right: 28, bottom: 30),
              child: Column(
                children: [
                  Text(
                    "UX Designer from Scratch.",
                    style: GoogleFonts.jost(
                      fontWeight:FontWeight.w500,
                      fontSize:32.61,
                      color:const Color.fromRGBO(255, 255, 255, 1)
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Basic guideline & tips & tricks for how to become a UX designer easily.",
                    style: GoogleFonts.jost(
                      fontWeight:FontWeight.w400,
                      fontSize:16,
                      color:const Color.fromRGBO(228, 205, 225, 1)
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/Group 4912.png", height:34, width:34,
                          ),
                          const SizedBox(width:5),
                          Text(
                            "Author:",
                            style: GoogleFonts.jost(
                              fontWeight:FontWeight.w500,
                              fontSize:16,
                              color:const Color.fromRGBO(90, 154, 197, 1)
                            ),
                          ),
                          Text(
                            " Jenny",
                            style: GoogleFonts.jost(
                              fontWeight:FontWeight.w400,
                              fontSize:16,
                              color:const Color.fromRGBO(255, 255, 255, 1)
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "4.8",
                            style: GoogleFonts.jost(
                              fontWeight:FontWeight.w500,
                              fontSize:16,
                              color:const Color.fromRGBO(255, 255, 255, 1)
                            ),
                          ),
                          const Icon(Icons.star,color:Color.fromRGBO(255, 146, 0, 1),weight: 15),
                          Text(
                            "(20 review)",
                            style: GoogleFonts.jost(
                              fontWeight:FontWeight.w400,
                              fontSize:16,
                              color:const Color.fromRGBO(190, 154, 197, 1)
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38)
                  )
                ),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                      child: Container(
                        height: 70,
                        decoration: const BoxDecoration(
                          color:Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10, right: 10),
                              height: 60,
                              width: 46,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(230, 239, 239, 1),
                                borderRadius: BorderRadius.all(Radius.circular(12))
                              ),
                              child: Image.asset(
                                "assets/youtube.png"
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Introduction",
                                  style: GoogleFonts.jost(
                                    fontWeight:FontWeight.w500,
                                    fontSize:17,
                                    color:const Color.fromRGBO(0, 0, 0, 1)
                                  ),
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text ... ",
                                  style: GoogleFonts.jost(
                                    fontWeight:FontWeight.w400,
                                    fontSize:12,
                                    color:const Color.fromRGBO(143, 143, 143, 1)
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ),
                    );
                  }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}