/*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FigmaUI(),
    );
  }
}

class FigmaUI extends StatefulWidget {
  const FigmaUI({super.key});

  @override
  State createState() => _FigmaUIState();
}

class TodoAppModel {

  String title;
  String description;
  String date;

  TodoAppModel({required this.title, required this.description,required this.date});
}

class _FigmaUIState extends State {

  //controllers to store data
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  //initialise editing index variable
  int? editingIndex;
  //create List
  List<TodoAppModel> todoList = [];

  //List of colors
  List colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1)
  ];

  //delete function
  void deleteCards(int index) {

    setState(() {
      todoList.removeAt(index);
    });
  }

  //edit cards
  void editCards(index) {

    editingIndex = index;
    titleController.text = todoList[index].title;
    descriptionController.text = todoList[index].description;
    dateController.text = todoList[index].date;

    showModelButton();
  }
  //showModelBottomsheet function 
  void showModelButton() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                  Text("Title",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(0, 139, 148, 1)))),
                  SizedBox(
                    width: 330,
                    height: 50,
                    child: TextField(
                      controller: titleController,
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
                      controller: descriptionController,
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
                      controller: dateController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1)),
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: const Icon(
                            Icons.date_range_outlined,
                            color: Color.fromRGBO(0, 0, 0, 0.7),
                          )),
                          readOnly: true,
                      onTap: ()async {
                        DateTime? pickedate = await showDatePicker(
                          context: context, 
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2026)
                        );
                        String formateDate = DateFormat.yMMMd().format(pickedate!);
                          
                        setState((){
                          dateController.text = formateDate;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            foregroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(255, 255, 255, 1)),
                            fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(0, 139, 148, 1))),
                        onPressed: () {
                          
                          setState(() {
                          
                            if(editingIndex != null) {
                              todoList[editingIndex!] = TodoAppModel(
                                title: titleController.text,
                                description: descriptionController.text,
                                date: dateController.text
                                
                              );
                              
                              editingIndex = null;
                            }else {
                             
                              TodoAppModel addModel = TodoAppModel(
                                title: titleController.text.trim(), 
                                description: descriptionController.text.trim(), 
                                date: dateController.text.trim()
                              );

                              if(titleController.text.trim().isNotEmpty && descriptionController.text.trim().isNotEmpty && dateController.text.trim().isNotEmpty) {

                                todoList.add(addModel);
                              }
                            
                            }
                            titleController.clear();
                            descriptionController.clear();
                            dateController.clear();
                            Navigator.pop(context);
                          });
                        },
                        child: const Text("Submit")),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 177, 159, 1),
        title: Text(
          "To-Do list",
          style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 26,
            height: 18,
          )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Container(
                    height: 112,
                    width: 330,
                    decoration: BoxDecoration(
                        color: colorList[index % colorList.length],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const SizedBox(width: 15),
                            Container(
                              padding: const EdgeInsets.all(9.0),
                              width: 52,
                              height: 52,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                              child: Image.asset(
                                "assets/Group 42.jpg",
                                height: 26,
                                width: 26,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        //height: 15,
                                        width: 243,
                                        child: Text(
                                          todoList[index].title,
                                          style: GoogleFonts.quicksand(
                                              textStyle: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1))),
                                        ),
                                      ),
                                      Container(
                                        height: 34,
                                        width: 243,
                                        margin: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          todoList[index].description,
                                          style: GoogleFonts.quicksand(
                                              textStyle: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 8,
                                                  //overflow: TextOverflow.ellipsis,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1))),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              SizedBox(
                                height: 15,
                                width: 70,
                                child: Text(
                                  todoList[index].date,
                                  style: GoogleFonts.quicksand(
                                      textStyle: const TextStyle(
                                          fontSize: 10,
                                          color: Color.fromRGBO(
                                              132, 132, 132, 1))),
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    editCards(index);  
                                  },
                                  icon: const Icon(Icons.edit,
                                      color: Color.fromRGBO(0, 139, 148, 1))),
                              IconButton(
                                  onPressed: () {
                                    deleteCards(index);
                                  },
                                  icon: const Icon(Icons.delete,
                                      color: Color.fromRGBO(0, 139, 148, 1)))
                            ],
                          ),
                        )
                      ],
                    )),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titleController.clear();
          descriptionController.clear();
          dateController.clear();
          showModelButton();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}*/


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/Utils/utils.dart';


class TodoListModel {

    String title;
    String description;
    String date;

    TodoListModel({required this.title,required this.description,required this.date});
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State createState() => _TodoListState();
}

class _TodoListState extends State {
  final TextEditingController _titleController = TextEditingController();
  final FocusNode _titleNode = FocusNode();

  final TextEditingController _descriptionController = TextEditingController();
  final FocusNode _descriptionNode = FocusNode();

  final TextEditingController _dateController = TextEditingController();
  final FocusNode _dateNode = FocusNode();

  bool isEditTask = false;
  int currentIndex = -1;

  List<TodoListModel> task = [];

  void addDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2024),
        lastDate: DateTime(2025));

    String formatedDate = DateFormat.yMMMd().format(pickedDate!);
      _dateController.text = formatedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontWeight: FontWeight.w700)),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
          itemCount: task.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 115,
                  width: 330,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(
                            0.0,
                            10.0,
                          ),
                          blurRadius: 20.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                      color: colorList[index % colorList.length],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 16, right: 15),
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Image.asset("assets/images/Group 42.png"),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(task[index].title,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.quicksand(
                                        textStyle: const TextStyle(
                                            color:
                                                Color.fromRGBO(84, 84, 84, 1)),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(task[index].description,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.quicksand(
                                        textStyle: const TextStyle(
                                            color:
                                                Color.fromRGBO(84, 84, 84, 1)),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(task[index].date,
                                style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(84, 84, 84, 1)),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600)),
                            const Spacer(),
                            const SizedBox(
                              width: 120,
                            ),
                            IconButton(
                                iconSize: 25,
                                onPressed: () {
                                    isEditTask = true;
                                    currentIndex = index;
                                    _titleController.text = task[index].title;
                                    _descriptionController.text = task[index].description;
                                    _dateController.text = task[index].date;
                                    addTask(context);
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                )),
                            IconButton(
                                iconSize: 25,
                                onPressed: () {
                                    currentIndex = index;
                                    deleteTask();
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        tooltip: "Add Task",
        onPressed: () {  
            _titleController.clear();       
            _descriptionController.clear();       
            _dateController.clear();       
            addTask(context);
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }

  void deleteTask() {
        setState(() {
            if(task.isNotEmpty && currentIndex!=-1) {
                task.removeAt(currentIndex);
            }
        });
  }

  void addTask(BuildContext context){
     showModalBottomSheet(
        isDismissible: false,
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              margin: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Create Task",
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600)
                      ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 9),
                    child: Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    height: 60,
                    child: TextField(
                      controller: _titleController,
                      focusNode: _titleNode,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10, top: 10),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                width: .5,
                                color: Color.fromRGBO(0, 139, 148, 1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                width: .5,
                                color: Color.fromRGBO(0, 139, 148, 1))),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 9),
                    child: Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    height: 100,
                    child: TextField(
                      controller: _descriptionController,
                      expands: true,
                      maxLines: null,
                      minLines: null,
                      focusNode: _descriptionNode,
                      keyboardType: TextInputType.emailAddress,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                width: .5,
                                color: Color.fromRGBO(0, 139, 148, 1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                width: .5,
                                color: Color.fromRGBO(0, 139, 148, 1))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 9),
                    child: Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    height: 60,
                    child: TextField(
                      controller: _dateController,
                      focusNode: _dateNode,
                      readOnly: true,
                      onTap: () {
                        addDate();
                      },
                      decoration: InputDecoration(
                        hintText: "YYYY-MM-DD",
                        hintStyle: const TextStyle(fontSize: 15),
                        suffixIcon: const Icon(Icons.date_range_sharp),
                        contentPadding: const EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                width: .5,
                                color: Color.fromRGBO(0, 139, 148, 1))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                width: .5,
                                color: Color.fromRGBO(0, 139, 148, 1))),
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9))),
                        fixedSize: const MaterialStatePropertyAll(Size(310, 50)),
                        foregroundColor:
                            const MaterialStatePropertyAll(Colors.white),
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(0, 139, 148, 1))),
                    onPressed: () {
                        
                        _titleController.text = trimAllSpaces(_titleController.text);
                        _descriptionController.text = trimAllSpaces(_descriptionController.text);
                        _dateController.text = trimAllSpaces(_dateController.text);

                        if(_titleController.text.isEmpty || _descriptionController.text.isEmpty || _dateController.text.isEmpty){
                           snackBarMessage(title: "Warning...!", message: "Please fill all the fields");
                        }
                        else if(!isEditTask) {
                          task.add(TodoListModel(
                            title: _titleController.text,
                            description: _descriptionController.text,
                            date: _dateController.text,
                          )
                        );
                      } else if(isEditTask) {
                          task[currentIndex].title = _titleController.text;
                          task[currentIndex].description = _descriptionController.text;
                          task[currentIndex].date = _dateController.text;
                        }
                      setState(() {
                        currentIndex = -1;
                        isEditTask = false;
                        _titleController.clear();
                        _descriptionController.clear();
                        _dateController.clear();
                      });
            
                      Navigator.pop(context);
                    },
                    child: Text("Submit",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700)
                            )
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
  }

  void snackBarMessage({required String title,required String message}){
        ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            content: Container(
                padding: const EdgeInsets.all(8),
                height: 80,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 130, 129, 129)
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child:  Row(
                    children: [
                
                    const CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(Icons.close_rounded,
                        color: Colors.white,)
                    ),
                
                    const SizedBox(width: 8,),
                
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                Text(title,
                                    style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800
                                    ),
                                ),
                                Text(message,
                                    style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500
                                ),
                                )
                        ],
                    ),
                    ],
                ),
            )
        )
    );
  }

  String trimAllSpaces(String str){
        List<String>ls = str.split(' ');
 
        str  ='';
        for(int i=0;i<ls.length-1;i++){
            if(ls[i]!=''){
                str += "${ls[i]} ";
            }
            
        }

        str += ls[ls.length-1];

        return str;
  }
}

