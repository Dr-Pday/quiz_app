import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dana'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('کویز کویین'),
          backgroundColor: Colors.indigo[800],
        ),
        body: HomeScreen(),
      ),
    );
  }
}
