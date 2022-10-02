import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';
import 'package:quiz_app/data/questions.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;

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
              SizedBox(height: 25),
              Text(
                selectedQuestion!.questionNumber!,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Text(
                selectedQuestion!.questionTitle!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ...List.generate(
                4,
                (index) => ListItems(index),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ListItems(index) {
    return ListTile(
      onTap: () {
        if (selectedQuestion!.answerList == index) {
          print('correct');
        } else {
          print('wrong');
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
}
