import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    String questionImageIndex =
        getQuestionsList()![shownQuestionIndex].imageNameNumber!;
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
                getQuestionsList()![shownQuestionIndex].questionNumber!,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Text(
                getQuestionsList()![shownQuestionIndex].questionTitle!,
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
        setState(() {
          if (shownQuestionIndex == 0 && index == 2) {
            shownQuestionIndex = shownQuestionIndex + 1;
          } else if (shownQuestionIndex == 1 && index == 0) {
            print('yes thats correct');
          }
        });
      },
      title: Text(
        getQuestionsList()![shownQuestionIndex].answerList![index],
        textAlign: TextAlign.end,
      ),
    );
  }
}
