import 'package:finance_app3/pages/quiz/quiz_page.dart';
import 'package:flutter/material.dart';

class FinalQuizPage extends StatelessWidget {
  const FinalQuizPage({super.key, required this.score});
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 65, 18, 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your score',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        '$score / 15',
                        style: const TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF92E3A9),
                            fontSize: 32),
                      ),
                    ),
                    Row(
                      children: [
                        Flexible(
                            child: score == 15
                                ? const Text(
                                    'You have successfully answered all the questions, way to go!',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 24),
                                  )
                                : score < 15 && score > 8
                                    ? const Text(
                                        'You have a good grasp of the basics!',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontSize: 24),
                                      )
                                    : score == 0
                                        ? const Text(
                                            'You\'ll definitely make it next time',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                fontSize: 24),
                                          )
                                        : const Text(
                                            'It was close, try next time!',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                fontSize: 24),
                                          )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 18),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const QuizPage()),
                );
              },
              child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: const Color(0xFF92E3A9),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
