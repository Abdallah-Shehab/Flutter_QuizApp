import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': ' Who is the father of C language?',
      'answers': [
        {'text': 'Steve Jobs', 'score': 0},
        {'text': 'James Gosling', 'score': 0},
        {'text': 'Dennis Ritchie', 'score': 1},
        {'text': 'Rasmus Lerdorf', 'score': 0}
      ]
    },
    {
      'questionText': 'Which of the following cannot be a variable name in C?',
      'answers': [
        {'text': 'volatile', 'score': 1},
        {'text': 'true', 'score': 0},
        {'text': 'friend', 'score': 0},
        {'text': 'export', 'score': 0}
      ]
    },
    {
      'questionText': 'What is an example of iteration in C?',
      'answers': [
        {'text': 'for', 'score': 0},
        {'text': 'while', 'score': 0},
        {'text': 'do-while', 'score': 0},
        {'text': 'All of the mentioned', 'score': 1}
      ]
    },
    {
      'questionText': 'What is C++?',
      'answers': [
        {'text': ' C++ is an object oriented programming language', 'score': 0},
        {'text': ' C++ is a procedural programming language', 'score': 0},
        {
          'text':
              ' C++ supports both procedural and object oriented programming language',
          'score': 1
        },
        {'text': ' C++ is a functional programming language', 'score': 0}
      ]
    },
    {
      'questionText': ' Which of the following is used for comments in C++?',
      'answers': [
        {'text': ' /* comment */', 'score': 0},
        {'text': '// comment */', 'score': 0},
        {'text': '// comment', 'score': 0},
        {'text': ' both // comment or /* comment */', 'score': 1}
      ]
    },
    {
      'questionText':
          'Which of the following user-defined header file extension used in c++?',
      'answers': [
        {'text': 'hg', 'score': 0},
        {'text': 'cpp', 'score': 0},
        {'text': 'h', 'score': 1},
        {'text': 'hf', 'score': 0}
      ]
    },
    {
      'questionText':
          'Which of the following is not a type of Constructor in C++?',
      'answers': [
        {'text': 'Default constructor', 'score': 0},
        {'text': ' Parameterized constructor', 'score': 0},
        {'text': 'Copy constructor', 'score': 0},
        {'text': 'Friend constructor', 'score': 1}
      ]
    },
    {
      'questionText':
          'Which of the following type is provided by C++ but not C?',
      'answers': [
        {'text': 'double', 'score': 0},
        {'text': 'Float', 'score': 0},
        {'text': 'int', 'score': 0},
        {'text': 'bool', 'score': 1}
      ]
    },
  ];
  var _questionIndex = 0;
  var _questionCounter = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _questionCounter = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
      _questionCounter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz, _questionCounter),
      ),
    );
  }
}
