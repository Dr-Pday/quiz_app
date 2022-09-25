import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                'images/1.png',
                height: 300,
              ),
              SizedBox(height: 25),
              Text(
                '۱ سوال',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Text(
                'بهترین شعبده باز جهان کیست ؟',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ListTile(
                title: Text(
                  'پاسخ اول',
                  textAlign: TextAlign.end,
                ),
              ),
              ListTile(
                title: Text(
                  'پاسخ دوم',
                  textAlign: TextAlign.end,
                ),
              ),
              ListTile(
                title: Text(
                  'پاسخ سوم',
                  textAlign: TextAlign.end,
                ),
              ),
              ListTile(
                title: Text(
                  'پاسخ چهارم',
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
