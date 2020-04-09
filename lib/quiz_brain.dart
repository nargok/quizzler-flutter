import 'dart:core';
import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<TrueFalseQuestion> _questionBank = [
    TrueFalseQuestion('Some cats are actually allergic to humans', true),
    TrueFalseQuestion('You can lead a cow down stairs but not up stairs.', false),
    TrueFalseQuestion('Approximately one quarter of human bones are in the feet.', true),
    TrueFalseQuestion('A slug\'s blood is green.', true),
    TrueFalseQuestion('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    TrueFalseQuestion('It is illegal to pee in the Ocean in Portugal.', true),
    TrueFalseQuestion(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    TrueFalseQuestion(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    TrueFalseQuestion(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    TrueFalseQuestion(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    TrueFalseQuestion('Google was originally called \"Backrub\".', true),
    TrueFalseQuestion(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    TrueFalseQuestion(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length -1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }
}