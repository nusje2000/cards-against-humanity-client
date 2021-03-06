import 'package:cards_against_humanity/widget/card/question_card.dart';
import 'package:cards_against_humanity/widget/card/answer_card.dart';
import 'package:flutter/material.dart';

class CardDisplayPage extends StatefulWidget {
  final Color backgroundColor = Color.fromRGBO(55, 71, 79, 1);

  @override
  _CardDisplayPageState createState() => _CardDisplayPageState();
}

class _CardDisplayPageState extends State<CardDisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Examples'),
        backgroundColor: Color.fromRGBO(55, 71, 79, 1),
      ),
      backgroundColor: widget.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              QuestionCard('Example Question?'),
              SizedBox(height: 20),
              AnswerCard('Example Answer.'),
            ],
          ),
        ),
      ),
    );
  }
}
