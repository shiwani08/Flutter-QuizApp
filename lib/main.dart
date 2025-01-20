import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz App',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white60,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),

        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.orange,
                  Colors.deepOrangeAccent
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Quiz()),
      ),
    );
  }
}

