import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
    const Color.fromRGBO(250, 232, 232, 1)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 177, 159, 1),
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 26,
            height: 18,
          )),
        ),
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder:
          (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
              child: Card(
                child: Container(
                  padding: const EdgeInsets.only(top: 15, left: 8),
                  height: 115,
                  color: colorList[index],
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 5),
                            Container(
                              height: 52,
                              width: 52,
                              // margin: const EdgeInsets.only(bottom:40),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Image.asset(
                                "assets/Group 42.jpg",
                                width: 23.79,
                                height: 19.07,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 243,
                                    margin: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Lorem Ipsum is simply setting industry.",
                                      style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: Color.fromRGBO(0, 0, 0, 1))),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 34,
                                    width: 243,
                                    margin:const EdgeInsets.only( left: 20),
                                    child:Text(
                                      "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                      style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 8,
                                              color: Color.fromRGBO(0, 0, 0, 1))),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              SizedBox(
                                height: 15,
                                width: 60,
                                child: Text(
                                  "10 July 2023",
                                  style: GoogleFonts.quicksand(
                                      textStyle: const TextStyle(
                                          fontSize: 10,
                                          color: Color.fromRGBO(132, 132, 132, 1))),
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.edit,
                                      color: Color.fromRGBO(0, 139, 148, 1))),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.delete,
                                      color: Color.fromRGBO(0, 139, 148, 1)))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              
            );
          },
        ),
      );
  }
}
