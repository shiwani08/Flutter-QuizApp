import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questionList.dart';
import 'package:quiz/models/quiz_questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuesInd = 0;

  void ansQues() {
    setState(() {
      currentQuesInd++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuesInd];

    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),

          // children is a list and so is currentQuestion,
          //so ... is added to pull this currentQuestion out of children and put a comma in that list
          ...currentQuestion.getShuffledAnswers().map(
            (answer) {
              return AnswerButton(
                answerText: answer,
                onTap: ansQues,
              );
            },
          ),
        ],
      ),
    );
  }
}
