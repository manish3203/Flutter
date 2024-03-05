import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); 

  final String title;
  
  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameTextEditingController = TextEditingController();
  final TextEditingController _mailTextEditingController = TextEditingController();
  final TextEditingController _collegeNameTextEditingController = TextEditingController();
  final TextEditingController _phoneNumTextEditingController = TextEditingController();
  final FocusNode _nameFocusNode1 = FocusNode();
  final FocusNode _nameFocusNode2 = FocusNode();
  final FocusNode _nameFocusNode3 = FocusNode();
  final FocusNode _nameFocusNode4 = FocusNode();
  

  List nameList = [];
  List mailList = [];
  List collegeNameList = [];
  List phoneList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor:Colors.white,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _nameTextEditingController,
            focusNode: _nameFocusNode1,
            decoration: InputDecoration(
              hintText: "Enter Name",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.red
                ),
              ),
            ),
            //cursorColor: Colors.amber,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            onChanged: (value) => {
              print("Value = $value")
            },
            onSubmitted: (value)=> {
              print("Data Submitted = $value")
            },
          ),
          const SizedBox(height: 5),
          TextField(
            controller: _mailTextEditingController,
            focusNode: _nameFocusNode2,
            decoration: InputDecoration(
              hintText: "Enter email",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.red
                ),
              ),
            ),
            
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => {
              print("Value = $value")
            },
            onSubmitted: (value)=> {
              print("Data Submitted = $value")
            },
          ),
          const SizedBox(height: 5),
          TextField(
            controller: _collegeNameTextEditingController,
            focusNode: _nameFocusNode3,
            decoration: InputDecoration(
              hintText: "Enter college name",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.red
                ),
              ),
            ),
            
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            onChanged: (value) => {
              print("Value = $value")
            },
            onSubmitted: (value)=> {
              print("Data Submitted = $value")
            },
          ),
          const SizedBox(height: 5),
          TextField(
            controller: _phoneNumTextEditingController,
            focusNode: _nameFocusNode4,
            decoration: InputDecoration(
              hintText: "Enter phone number",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.red
                ),
              ),
            ),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onChanged: (value) => {
              print("Value = $value")
            },
            onSubmitted: (value)=> {
              print("Data Submitted = $value")
            },
          ),
          const SizedBox(
            height: 20,
          ),
          
          Expanded(
            child: ListView.builder(
              itemCount: nameList.length,
              itemBuilder: (context, index) {
            
                return Card(
                  shadowColor: Colors.grey.shade600,
                  elevation: 10,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name : ${nameList[index]}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "email : ${mailList[index]}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "College Name : ${collegeNameList[index]}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "Phone No : ${phoneList[index]}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ),
                );
              }
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            nameList.add(_nameTextEditingController.text);
            mailList.add(_mailTextEditingController.text);
            collegeNameList.add(_collegeNameTextEditingController.text);
            phoneList.add(_phoneNumTextEditingController.text);
          });
          _nameTextEditingController.clear();
          _mailTextEditingController.clear();
          _collegeNameTextEditingController.clear();
          _phoneNumTextEditingController.clear();
        },
        child: const Text("ADD"),
      ),
    );
  }
}