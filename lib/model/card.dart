import 'dart:convert';

class Card {
  final int id;
  final String text;

  Card({
    this.id,
    this.text,
  });

  factory Card.fromJson(Map<String, dynamic> json) {
    return Card(
      id: json['id'] as int,
      text: json['text'] as String,
    );
  }
}

Card parseCard(String responseBody) {
  return Card.fromJson(json.decode(responseBody));
}

List<Card> parseCards(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Card>((json) => Card.fromJson(json)).toList();
}
