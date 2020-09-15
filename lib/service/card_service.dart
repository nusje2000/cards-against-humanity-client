import 'package:cards_against_humanity/model/card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

Future<Card> fetchQuestionCard() async {
    final response = await rootBundle.loadString('assets/mock/question_cards.json');

    return compute(parseCard, response);
}

Future<List<Card>> fetchAnswerCards() async {
    final response = await rootBundle.loadString('assets/mock/answer_cards.json');

    return compute(parseCards, response);
}
