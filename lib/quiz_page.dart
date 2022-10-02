import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screen/result_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;
  bool answered = false;
  int trueAnswer = 0;
  int falseAnswer = 0;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionsList()![shownQuestionIndex];
    String questionImageIndex = selectedQuestion!.imageNameNumber!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('کویز ها'),
        backgroundColor: Colors.indigo[800],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(width: double.infinity),
              Image.asset(
                'images/$questionImageIndex.png',
                height: 300,
              ),
              SizedBox(height: 20),
              Text(
                selectedQuestion!.questionNumber!,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                selectedQuestion!.questionTitle!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              ...List.generate(
                4,
                (index) => ListItems(index),
              ),
              if (answered) GetResualt(),
            ],
          ),
        ),
      ),
    );
  }

  Widget ListItems(index) {
    return ListTile(
      onTap: () {
        if (selectedQuestion!.correctanswer == index) {
          trueAnswer++;
          print('correct');
        } else {
          falseAnswer++;
        }
        if (shownQuestionIndex == getQuestionsList()!.length - 1) {
          answered = true;
        }
        setState(() {
          if (shownQuestionIndex < getQuestionsList()!.length - 1) {
            shownQuestionIndex++;
          }
        });
      },
      title: Text(
        selectedQuestion!.answerList![index],
        textAlign: TextAlign.end,
      ),
    );
  }

  Widget GetResualt() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) =>
                ResultScreen(correctAnswer: trueAnswer),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Colors.red[700],
          minimumSize: Size(200, 50)),
      child: Text(
        'مشاهده نتایج',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
