// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:no_1/App/shared_component/style/colour.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;

  List<Map<String, dynamic>> quizData = [
    {
      'question': 'What is the capital of France?',
      'options': ['Paris', 'London', 'Berlin', 'Rome'],
      'correctIndex': 0,
    },
    {
      'question': 'Who wrote "Romeo and Juliet"?',
      'options': [
        'William Shakespeare',
        'Charles Dickens',
        'Jane Austen',
        'Agatha Christie'
      ],
      'correctIndex': 0,
    },
    {
      'question': 'What is 2 + 2?',
      'options': ['4', '3', '5', '2'],
      'correctIndex': 0,
    },
  ];

  List<int?> answers = List.filled(3, null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Quiz App'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavigationButton(0),
                _buildNavigationButton(1),
                _buildNavigationButton(2),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              quizData[_currentQuestionIndex]['question'],
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            ..._buildOptionsList(),
            SizedBox(height: 20.0),
            if (_currentQuestionIndex < quizData.length - 1)
              ElevatedButton(
                onPressed: _nextQuestion,
                style: ElevatedButton.styleFrom(primary: purple1),
                child: Text(
                  'Next',
                  style: TextStyle(color: white),
                ),
              ),
            if (_currentQuestionIndex == quizData.length - 1)
              ElevatedButton(
                onPressed: _showResultPage,
                style: ElevatedButton.styleFrom(primary: purple1),
                child: Text(
                  'Selesai',
                  style: TextStyle(color: white),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationButton(int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _currentQuestionIndex = index;
        });
      },
      child: Text((index + 1).toString()),
      style: ElevatedButton.styleFrom(
        primary: _currentQuestionIndex == index ? Colors.blue : null,
      ),
    );
  }

  List<Widget> _buildOptionsList() {
    List<Widget> optionsWidgets = [];
    for (int i = 0;
        i < quizData[_currentQuestionIndex]['options'].length;
        i++) {
      optionsWidgets.add(
        RadioListTile<int?>(
          title: Text(quizData[_currentQuestionIndex]['options'][i]),
          value: i,
          groupValue: answers[_currentQuestionIndex],
          onChanged: (value) {
            setState(() {
              answers[_currentQuestionIndex] = value;
            });
          },
        ),
      );
    }
    return optionsWidgets;
  }

  void _nextQuestion() {
    setState(() {
      _currentQuestionIndex++;
    });
  }

  void _showResultPage() {
    // Quiz finished, calculate correct answers
    int correctAnswers = 0;
    for (int i = 0; i < answers.length; i++) {
      if (answers[i] == quizData[i]['correctIndex']) {
        correctAnswers++;
      }
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          totalQuestions: quizData.length,
          correctAnswers: correctAnswers,
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  final int totalQuestions;
  final int correctAnswers;

  const ResultPage({
    required this.totalQuestions,
    required this.correctAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Results'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz Finished!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
                'You answered $correctAnswers questions correctly out of $totalQuestions'),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                    context); // Pop result page and go back to quiz page
              },
              child: Text('Back to Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
