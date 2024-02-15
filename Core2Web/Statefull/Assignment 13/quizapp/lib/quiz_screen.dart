import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {

  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 2,
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 0,
    },
    {
      "question": "Who is the founder of Amazon?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
    {
      "question": "Who is the founder of Tesla?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answerIndex": 3,
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Lary Page", "Bill Gates", "Elon Musk"],
      "answerIndex": 1,
    },
  ];
  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnsIndex = -1;
  int noCorrectOption = 0;

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {

    if(selectedAnsIndex == -1) {

      return const MaterialStatePropertyAll(null);
    }else {

      if(buttonIndex == allQuestions[questionIndex]["answerIndex"]) {

        return const MaterialStatePropertyAll(Colors.green);
      }else if(buttonIndex == selectedAnsIndex) {

        return const MaterialStatePropertyAll(Colors.red);
      }else {

        return const MaterialStatePropertyAll(null);
      }
    }
  }
  
  void validateCurrenetPage() {
    if(selectedAnsIndex == -1) {
      return;
    }
    
    if(questionIndex+1 == allQuestions.length) {

      questionScreen = false;
      setState(() {
        
      });
    }
    if(selectedAnsIndex == allQuestions[questionIndex]["answerIndex"]) {

      noCorrectOption+=1;
    }
    questionIndex++;
    selectedAnsIndex = -1;
  }
  Scaffold isQuestionScreen() {

    if(questionScreen == true) {

      return Scaffold(

        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w800
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  "${questionIndex+1} / ${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
            const SizedBox(
              height:50
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestions[questionIndex]["question"],
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 23
                ),
              )
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
               style:ButtonStyle(
                backgroundColor:checkAnswer(0),
              ),
              onPressed: () {
                if(selectedAnsIndex == -1) {
                  setState(() {
                    selectedAnsIndex = 0;
                  });
                }
              },
             
              child: Text(
                "A.${allQuestions[questionIndex]["options"][0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(1),
              ),
              onPressed: () {
                if(selectedAnsIndex == -1) {
                  setState(() {
                    selectedAnsIndex = 1;
                  });
                }
              },
              child: Text(
                "B.${allQuestions[questionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(2),
              ),
              onPressed: () {
                  if(selectedAnsIndex == -1) {
                  setState(() {
                    selectedAnsIndex = 2;
                  });
                }
              },
              child: Text(
                "C.${allQuestions[questionIndex]["options"][2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(3),
              ),
              onPressed: () {
                  
                if(selectedAnsIndex == -1) {
                  setState(() {
                    selectedAnsIndex = 3;
                  });
                }
              },
              child: Text(
                "D.${allQuestions[questionIndex]["options"][3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
    
            validateCurrenetPage();
            setState(() {});
          },
          child: const Icon(Icons.arrow_forward),
        ),
      );
    }else {
      return Scaffold(
        body:  Column(
          
          children: [
            Row(),
            Image.network(
              "https://img.freepik.com/free-vector/winner-background-first-place-competition_91128-1587.jpg",
              height: 400,
              width: 340,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Congratulations!!! "),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "You have completed quiz.",
            ),
            Text("$noCorrectOption/${allQuestions.length}"),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {
                  questionIndex = 0;
                  selectedAnsIndex = -1;
                  questionScreen = true;
                  noCorrectOption = 0;
                  setState(() {});
                },
                child: const Text(
                  "Reset",
                ))
          ],
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {

    return isQuestionScreen();
  }
}
