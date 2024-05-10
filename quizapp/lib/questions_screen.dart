import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    // currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    // final currentQuestion = questions[0];
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              // 'The question...',
              currentQuestion.text,
              // style: const TextStyle(color: Colors.white),
              style: GoogleFonts.notoSansKr(
                color: const Color.fromARGB(255, 153, 239, 216),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // // 기본적인 map사용법
            // ...currentQuestion.answers.map(
            //   (answer) {
            //     return AnswerButton(
            //       answerText: answer,
            //       onTap: () {},
            //     );
            //   },
            // )
            // 나는 강의에 없는 SizedBox를 추가해야하기 때문에
            // index를 반환하는 map이 필요함.
            ...currentQuestion
                .getShuffledAnsswers()
                .asMap()
                .entries
                .expand((entry) {
              int idx = entry.key;
              String answer = entry.value;
              return [
                AnswerButton(
                  answerText: answer,
                  onTap: answerQuestion,
                ),
                if (idx != currentQuestion.answers.length - 1)
                  const SizedBox(height: 10)
              ];
            }),
          ],
        ),
      ),
    );
  }
}
