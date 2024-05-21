import 'dart:math';
import 'package:finance_app3/model/answer_item.dart';
import 'package:finance_app3/model/question_item.dart';
import 'package:finance_app3/model/result_item.dart';
import 'package:finance_app3/pages/add_new_item_page.dart';
import 'package:finance_app3/pages/quiz/final_page.dart';
import 'package:finance_app3/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class QuizGamePage extends StatefulWidget {
  const QuizGamePage({
    super.key,
  });

  @override
  State<QuizGamePage> createState() => _QuizGamePageState();
}

class _QuizGamePageState extends State<QuizGamePage> {
  List<QuestionItem> questions = [
    QuestionItem(
        title: 'Which of the following is NOT a factor of production?',
        answers: [
          AnswerItem(title: 'Land', isCorrect: false),
          AnswerItem(title: 'Capital', isCorrect: false),
          AnswerItem(title: 'Ideas ', isCorrect: true),
        ],
        isCompleted: false),
    QuestionItem(
        title:
            'Which of the following is an example of a positive externality?',
        answers: [
          AnswerItem(
              title:
                  'A factory pollutes the air, which causes respiratory problems for people living nearby.',
              isCorrect: false),
          AnswerItem(
              title:
                  'A homeowner builds a fence around their property, which increases the value of their neighbors\' properties.',
              isCorrect: true),
          AnswerItem(
              title:
                  ' A government provides free public education, which leads to a more educated workforce.',
              isCorrect: false),
        ],
        isCompleted: false),
    QuestionItem(
        title:
            'Which of the following is an example of a normative statement in economics?',
        answers: [
          AnswerItem(
              title: 'The unemployment rate in the United States is 4.2%.',
              isCorrect: false),
          AnswerItem(
              title:
                  'The price of gasoline is determined by the supply and demand for oil.',
              isCorrect: false),
          AnswerItem(
              title: 'The minimum wage should be increased to \$15 per hour.',
              isCorrect: true),
        ],
        isCompleted: false),
    QuestionItem(
        title: 'Which of the following is an example of a market failure?',
        answers: [
          AnswerItem(
              title:
                  'A firm pollutes the environment and does not pay for the damage it causes.',
              isCorrect: true),
          AnswerItem(
              title:
                  'The government provides a subsidy to farmers, which lowers the price of food for consumers.',
              isCorrect: false),
          AnswerItem(
              title:
                  'A company patents a new drug and charges a high price for it.',
              isCorrect: false),
        ],
        isCompleted: false),
    QuestionItem(
        title: 'Which of the following is a characteristic of a monopoly?',
        answers: [
          AnswerItem(
              title: 'There are many firms selling the same product.',
              isCorrect: false),
          AnswerItem(
              title:
                  'Firms have the ability to influence the price of the product.',
              isCorrect: false),
          AnswerItem(
              title: 'There are few or no close substitutes for the product.',
              isCorrect: true),
        ],
        isCompleted: false),
    QuestionItem(
        title:
            'Which of the following is an example of a Keynesian economic policy?',
        answers: [
          AnswerItem(
              title: 'Cutting taxes to stimulate economic growth',
              isCorrect: true),
          AnswerItem(
              title: 'Reducing the money supply to fight inflation',
              isCorrect: false),
          AnswerItem(
              title: 'Deregulating industries to promote competition',
              isCorrect: false),
        ],
        isCompleted: false),
    QuestionItem(
        title: 'Which of the following is a measure of income inequality?',
        answers: [
          AnswerItem(title: 'The unemployment rate', isCorrect: false),
          AnswerItem(title: 'The inflation rate', isCorrect: false),
          AnswerItem(title: 'The Gini coefficient', isCorrect: true),
        ],
        isCompleted: false),
    QuestionItem(
        title: 'Which of the following is an example of a progressive tax?',
        answers: [
          AnswerItem(
              title:
                  'A sales tax, which is levied at a flat rate on all purchases',
              isCorrect: false),
          AnswerItem(
              title:
                  'A property tax, which is based on the assessed value of a property',
              isCorrect: false),
          AnswerItem(
              title:
                  'An income tax, in which people with higher incomes pay a higher tax rate',
              isCorrect: true),
        ],
        isCompleted: false),
    QuestionItem(
        title:
            'Which of the following is an example of a macroeconomic policy?',
        answers: [
          AnswerItem(
              title:
                  'A government program that provides job training to unemployed workers',
              isCorrect: false),
          AnswerItem(
              title: 'A central bank\'s decision to raise interest rates',
              isCorrect: true),
          AnswerItem(
              title:
                  'A local government\'s ordinance that zoning regulations for new businesses',
              isCorrect: false),
        ],
        isCompleted: false),
    QuestionItem(
        title: 'Which of the following is an example of a fiscal policy?',
        answers: [
          AnswerItem(
              title: 'A central bank\'s decision to raise interest rates',
              isCorrect: false),
          AnswerItem(
              title: 'A company\'s decision to invest in new equipment',
              isCorrect: false),
          AnswerItem(
              title:
                  'A government program that provides job training to unemployed workers',
              isCorrect: true),
        ],
        isCompleted: false),
    QuestionItem(
        title:
            'Which of the following is an example of an inflationary spiral?',
        answers: [
          AnswerItem(
              title:
                  'A period of rising prices that is caused by an increase in the money supply',
              isCorrect: true),
          AnswerItem(
              title:
                  'A period of falling prices that is caused by a decrease in the money supply',
              isCorrect: false),
          AnswerItem(
              title:
                  'A period of stable prices that is caused by a balance between the supply of money and the demand for goods and services',
              isCorrect: false),
        ],
        isCompleted: false),
    QuestionItem(
        title: 'Which of the following is an example of a stagflation?',
        answers: [
          AnswerItem(
              title: 'A period of high unemployment and high inflation',
              isCorrect: true),
          AnswerItem(
              title: 'A period of low unemployment and low inflation',
              isCorrect: false),
          AnswerItem(
              title: 'A period of high unemployment and low inflation',
              isCorrect: false),
        ],
        isCompleted: false),
    QuestionItem(
        title: 'Which of the following is an example of a supply shock?',
        answers: [
          AnswerItem(
              title: 'A sudden increase in the demand for a good or service',
              isCorrect: false),
          AnswerItem(
              title: 'A sudden decrease in the supply of a good or service',
              isCorrect: true),
          AnswerItem(
              title:
                  'A change in technology that affects the production of a good or service',
              isCorrect: false),
        ],
        isCompleted: false),
    QuestionItem(
        title: 'Which of the following is an example of a demand shock?',
        answers: [
          AnswerItem(
              title: 'A sudden increase in the supply of a good or service',
              isCorrect: true),
          AnswerItem(
              title: 'A sudden decrease in the supply of a good or service',
              isCorrect: false),
          AnswerItem(
              title:
                  'A change in government policy that affects the demand for a good or service',
              isCorrect: false),
        ],
        isCompleted: false),
    QuestionItem(
        title:
            'Which of the following is NOT a topic studied in microeconomics?',
        answers: [
          AnswerItem(
              title: 'The interaction between firms in a market',
              isCorrect: false),
          AnswerItem(
              title: 'Determining the optimal level of output for a firm',
              isCorrect: false),
          AnswerItem(
              title: 'The impact of government regulation on the economy',
              isCorrect: true),
        ],
        isCompleted: false),
  ];

  List colors = [
    const Color(0xFFE334FF),
    const Color(0xFF3B4DF0),
    const Color(0xFFA045FB),
    const Color(0xFFF475B2),
  ];
  List<String> images = [
    'assets/banking1.jpeg',
    'assets/money1.jpg',
    'assets/money2.jpg',
    'assets/money3.jpg',
    'assets/money4.png',
    'assets/money5.jpg',
    'assets/money6.png',
    'assets/money7.jpg',
  ];

  int index = 0;

  int questionNumber = 0;
  QuestionItem currentQuestion = QuestionItem();
  AnswerItem selected = AnswerItem();
  int correctAnswers = 0;
  String currentImage = '';
  @override
  void initState() {
    super.initState();
    questions.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    Map<int, QuestionItem> quastionMap = {};
    quastionMap = questions.asMap();

    quastionMap.forEach((key, value) {
      if (key == questionNumber) {
        currentQuestion = value;
        if (currentQuestion.isCompleted == false ||
            currentQuestion.isCompleted == null) {
          currentImage = images[Random().nextInt(8)];
        }
      }
    });
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 60, 20, 84),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.chevron_left,
                        color: Color(0xFF92E3A9),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Quiz',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Text(
                    '${questionNumber + 1}/15',
                    style: const TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 20, top: 24, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            '${questionNumber + 1}. ${currentQuestion.title!}',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontFamily: 'Inter',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: getAnswers(),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 18),
            child: InkWell(
              onTap: () {
                if (selected.title != null) {
                  currentQuestion.isCompleted = true;

                  if (questionNumber < 14) {
                    selected = AnswerItem();
                    questionNumber++;
                  } else {
                    ResultItem result = ResultItem();
                    result.count = correctAnswers;
                    result.date = DateFormat("MM/dd/yy").format(DateTime.now());
                    results.add(result);
                    addToSP();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => FinalQuizPage(
                                score: correctAnswers,
                              )),
                    );
                  }

                  setState(() {});
                }
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

  Widget getAnswers() {
    List<Widget> list = [];

    for (var answer in currentQuestion.answers!) {
      list.add(InkWell(
        onTap: () {
          if (answer.isCorrect!) {
            correctAnswers++;
          }
          currentQuestion.isCorrect = answer.isCorrect;
          selected = answer;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: selected == answer
                  ? Colors.transparent
                  : const Color(0xFF262826),
              border: Border.all(
                  color: selected == answer
                      ? const Color(0xFF92E3A9)
                      : Colors.transparent)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  answer.title!,
                  style: const TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 12,
      ));
    }

    return Column(
      children: list,
    );
  }
}
