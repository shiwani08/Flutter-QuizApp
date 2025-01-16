import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ const
        Text('The Question...'),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 1'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 2'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 3'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 4'),
        ),
      ],
    );
  }
}
