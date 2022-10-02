import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, this.correctAnswer = 0});
  int correctAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('نتیحه آزمون'),
        backgroundColor: Colors.red[700],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage('images/cup.png'),
              ),
            ),
            Text(
              'تعداد جواب های صحیح',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$correctAnswer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
