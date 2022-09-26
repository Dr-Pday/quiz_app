import 'package:quiz_app/data/questions.dart';

List<Question>? getQuestionsList() {
  var firstQuestion = Question();

  firstQuestion.answerList = [
    'عرفان انق',
    'ستاره دوگونچی',
    'دیوید کاپرفیلد',
    'علی خامنه ای مزدور'
  ];
  firstQuestion.questionTitle = 'بهترین شعبده باز جهان کیست ؟';
  firstQuestion.correctanswer = 3;
  firstQuestion.imageNameNumber = '1';
  firstQuestion.questionNumber = 1;
}
