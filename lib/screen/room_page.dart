import 'package:cards_against_humanity/model/card.dart' as cardModel;
import 'package:cards_against_humanity/model/room.dart';
import 'package:cards_against_humanity/screen/rooms_page.dart';
import 'package:cards_against_humanity/service/card_service.dart';
import 'package:cards_against_humanity/widget/card/answer_card.dart';
import 'package:cards_against_humanity/widget/card/question_card.dart';
import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  final Room room;

  RoomPage(this.room, {Key key}) : super(key: key);

  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  Future<cardModel.Card> futureQuestionCard;
  Future<List<cardModel.Card>> futureAnswerCards;

  @override
  void initState() {
    super.initState();

    futureQuestionCard = fetchQuestionCard();
    futureAnswerCards = fetchAnswerCards();
  }

  Widget buildFutureQuestionCard() {
    return FutureBuilder<cardModel.Card>(
      future: futureQuestionCard,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        return QuestionCard(snapshot.data.text);
      },
    );
  }

  Widget buildFutureAnswerCards() {
    return FutureBuilder<List<cardModel.Card>>(
      future: futureAnswerCards,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              snapshot.data.length,
              (index) => Padding(
                padding: EdgeInsets.all(8.0),
                child: AnswerCard(snapshot.data[index].text),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.room.name),
          backgroundColor: Color.fromRGBO(55, 71, 79, 1),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => RoomsPage(),
                ));
              },
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(55, 71, 79, 1),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Column(
              children: [
                buildFutureQuestionCard(),
                Spacer(),
                buildFutureAnswerCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
